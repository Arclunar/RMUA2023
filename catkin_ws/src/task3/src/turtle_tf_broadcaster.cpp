#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
#include <turtlesim/Pose.h>

// file name : turtle_tf_broadcaster.cpp
// date : 8/15/2022
// source : ros wiki
// editor : howard.zheng
// description : task 3 

// global variables
std::string turtle_name; // turtle_name launch文件中指定节点的名字，避免节点命名冲突
double Pi=3.1415926; // 圆周率

// function : 订阅位姿的回调函数
// input : Pose msg
// output : null
void poseCallback(const turtlesim::PoseConstPtr& msg){

  static tf::TransformBroadcaster br; // 创建一个静态tf广播对象
  tf::Transform transform; //创建tf变换对象

  //*** 乌龟原始坐标 ***//
  /*** 设置变换的平移 ***/
   transform.setOrigin(tf::Vector3(msg->x, msg->y, 0.0) );   // 由于是二维，所以只有x和y坐标自由

  /*** 设置变换的旋转 ***/
  tf::Quaternion q; // 四元数对象
  q.setRPY(0, 0, msg->theta); // 用欧拉角转换成四元数的值
  transform.setRotation(q); 

  /*** 将坐标变换广播出去 ***/
  // transform 已经设置好的变换对象
  // Time::now()时间设置在最近一个时刻上
  // parent frame 是世界坐标
  // child frame 是自身坐标
  br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "world", turtle_name));

  //*** 乌龟左后方45度，距离为2的坐标坐标 ***//
  transform.setOrigin( tf::Vector3(msg->x-2*cos(msg->theta-Pi/4), msg->y-2*sin(msg->theta-Pi/4), 0.0) ); 
  br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "world", turtle_name+"_carrot"));

}


int main(int argc, char** argv){

    // node初始化，这个名字将会在launch中被替换，防止重复产生乌龟时有结点命名重复
    ros::init(argc, argv, "my_tf_broadcaster");

    // 要求传入一个参数作为结点名字
    if (argc != 2){ROS_ERROR("need turtle name as argument"); return -1;};
    turtle_name = argv[1];

    // 订阅位姿，通过回调函数poseCallback将坐标信息广播出去
    ros::NodeHandle node;
    ros::Subscriber sub = node.subscribe(turtle_name+"/pose", 10, &poseCallback);

    ros::spin();
    return 0;
};