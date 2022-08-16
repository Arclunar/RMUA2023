// file name : server.cpp
// date : 8/15/2022
// source : ros wiki
// editor : howard.zheng
// description : task 2 client
// editing history : 
//      8/16/2022 add ros::param, service message with image attached, test the influence of msg load


#include <ros/ros.h>
#include "task2/hello.h"
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>

// 服务响应回调函数
bool requestCallback(task2::hello::Request & req,task2::hello::Response & resp)
{
    //** 写入收到请求的时间
    resp.stamp_request_arrived=ros::Time::now();

    //** 输出提示信息
    ROS_INFO("Request received");
    ROS_INFO("The request is \"%s\" ",req.request.c_str());

    //** 礼貌回复
    std::string response;
    ros::param::get("~response",response); // 从参数服务器获取响应文本
    resp.response=response;

    //** 将图片传回去
    resp.img=req.img; 

    //** 加入响应传输时间戳
    resp.stamp_response=ros::Time::now();

    return true;
    
}
int main(int argc, char  *argv[])
{
    //** 支持中文显示
    setlocale(LC_ALL,"");

    //** 初始化节点
    ros::init(argc,argv,"server");

    //** 声明句柄
    ros::NodeHandle nh;

    //** 发布服务
    ros::ServiceServer server = nh.advertiseService("hello_service",requestCallback);
    ROS_INFO("服务已经启动");
    
    //** 随时响应请求
    ros::spin();

    return 0;
}
