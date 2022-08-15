#include <ros/ros.h>
#include <tf/transform_listener.h>
#include <geometry_msgs/Twist.h>
#include <turtlesim/Spawn.h>

// file name : turtle_tf_listener.cpp
// date : 8/15/2022
// source : ros wiki
// editor : howard.zheng
// description : task 3 

int main(int argc, char** argv){

    // 初始化ros结点
    ros::init(argc, argv, "my_tf_listener"); 

    ros::NodeHandle node;

    // ****************** 产生乌龟2 ********************//
    // 产生乌龟2,call /spawn服务
    ros::service::waitForService("spawn");
    ros::ServiceClient add_turtle = node.serviceClient<turtlesim::Spawn>("spawn");
    turtlesim::Spawn srv;
    srv.request.name="/turtle2"; //指定产生乌龟的名字
    srv.request.x=2;
    srv.request.y=2;
    add_turtle.call(srv);

    // 订阅乌龟2位姿
    ros::Publisher turtle_vel2 = node.advertise<geometry_msgs::Twist>(srv.request.name+"/cmd_vel", 10);

    // ****************** 产生乌龟3 ********************//
    srv.request.name="/turtle3";
    add_turtle.call(srv);

    // 订阅乌龟3位姿
    ros::Publisher turtle_vel3 = node.advertise<geometry_msgs::Twist>(srv.request.name+"/cmd_vel", 10);



    // ****************** 获取相对位姿 ********************//
    // 创建监听对象
    tf::TransformListener listener;
    ros::Rate rate(10.0);

    while (node.ok())
    {
        tf::StampedTransform transform;
        try{ //从tf tree中获取变换，得到turtle1相对于turtle2的姿态
             //从turtle2变换到turtle1_carrot，所以turtle2是source frame，turtle1是target frame
            listener.waitForTransform("/turtle2","/turtle1_carrot",ros::Time(0),ros::Duration(3));
            listener.lookupTransform("/turtle2", "/turtle1_carrot",
                               ros::Time(0), transform);
            }
        catch (tf::TransformException &ex) { // 获取失败，报错
        ROS_ERROR("%s",ex.what());
        ros::Duration(1.0).sleep();
        continue;
        }

    // ****************** 控制乌龟朝终点方向走 ********************//    
    geometry_msgs::Twist vel_msg; //定义控制消息

    // 原来demo的方法到目标点后由于atan2的奇异性，容易在目标点附近来回振荡
    // 这里给速度设置一个最小值，使小乌龟在终点附近就停下来，不完全靠近终点
    double orient=atan2(transform.getOrigin().y(),transform.getOrigin().x()); // 终点方向
    double dist=sqrt(pow(transform.getOrigin().x(), 2) + pow(transform.getOrigin().y(), 2)); // 到终点距离

    // 由于得到的是turtle1左后方的点相对于turtle2的姿态，所以在哪边就往哪边转，速度随着距离的缩短而减少
    vel_msg.angular.z = 4* orient; //定义旋转
    vel_msg.linear.x = 0.5*dist>0.01?0.5*dist:0;
    turtle_vel2.publish(vel_msg);   // 发布控制指令

    
    // ****************** 乌龟3的控制同理 ********************//
    try{ // 从turtle3变换到turtle2，所以turtle3是source frame，turtle3是target frame
      listener.waitForTransform("/turtle3","/turtle2_carrot",ros::Time(0),ros::Duration(3));
      listener.lookupTransform("/turtle3", "/turtle2_carrot",
                               ros::Time(0), transform);
    }
    catch (tf::TransformException &ex) {
      ROS_ERROR("%s",ex.what());
      ros::Duration(1.0).sleep();
      continue;
    }

    orient=atan2(transform.getOrigin().y(),transform.getOrigin().x()); // 终点方向
    dist=sqrt(pow(transform.getOrigin().x(), 2) + pow(transform.getOrigin().y(), 2)); // 到终点距离

    vel_msg.angular.z = 4* orient; //定义旋转
    vel_msg.linear.x = 0.5*dist>0.01?0.5*dist:0;
    turtle_vel3.publish(vel_msg);

    rate.sleep(); //冷静一下
  }
  return 0;
};