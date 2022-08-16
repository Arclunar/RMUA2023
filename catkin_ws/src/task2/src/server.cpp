#include <ros/ros.h>
#include "task2/hello.h"

// 服务响应回调函数
bool requestCallback(task2::hello::Request & req,task2::hello::Response & resp)
{
    // 写入收到请求的时间
    resp.stamp_request_arrived=ros::Time::now();
  
    // 礼貌回复
    resp.response="hello god~";

    resp.stamp_response=ros::Time::now();

    return true;
    
}
int main(int argc, char  *argv[])
{
    // 支持中文显示
    setlocale(LC_ALL,"");

    // 初始化节点
    ros::init(argc,argv,"server");

    // 声明句柄
    ros::NodeHandle nh;

    // 发布服务
    ros::ServiceServer server = nh.advertiseService("hello_service",requestCallback);
    ROS_INFO("服务已经启动");
    
    // 随时响应请求
    ros::spin();

    return 0;
}
