#include <ros/ros.h>
#include "task2/hello.h"


bool requestCallback(task2::hello::Request & req,task2::hello::Response & resp)
{
    // 写入收到请求的时间
    resp.stamp_response=ros::Time::now();
  
    // 礼貌回复
    resp.response="hi f**k you";

    return true;
    
}
int main(int argc, char  *argv[])
{
    // 支持重温显示
    setlocale(LC_ALL,"");

    // 初始化节点
    ros::init(argc,argv,"server");

    // 声明句柄
    ros::NodeHandle nh;

    // 发布服务
    ros::ServiceServer server = nh.advertiseService("hello_service",requestCallback);
    ROS_INFO("服务已经启动");
    
    ros::spin();

    return 0;
}
