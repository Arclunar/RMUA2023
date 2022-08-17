// ****************************************************
// file name : client.cpp
// date : 8/15/2022i
// author : howard.zheng
// description : task 2 client
// editing history : 
//      8/16/2022 add ros::param, service message with image attached, test the influence of msg load
// ****************************************************

#include <ros/ros.h>
#include "task2/hello.h"
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>


int main(int argc, char  *argv[])
{

    ROS_INFO("client started");
    // 支持中文显示
    setlocale(LC_ALL,"");

    // 初始化结点
    ros::init(argc,argv,"client");

    // 创建句柄
    ros::NodeHandle nh;

    //** 订阅服务
    ros::ServiceClient client = nh.serviceClient<task2::hello>("hello_service");

    //** 查找服务
    ros::service::waitForService("hello_service");

    //** 组装服务消息
    task2::hello hello_srv;

    // 文本信息
    std::string load; 
    ros::param::get("~load",load); //从参数服务器获取传输文本
    hello_srv.request.request=load;

    // 图片信息
    cv::Mat img;
    std::string filename;
    ros::param::get("~filename",filename); //获取图片文件名字
    img=cv::imread(filename);
    sensor_msgs::ImagePtr msgImage;
    msgImage=cv_bridge::CvImage(std_msgs::Header(),"bgr8",img).toImageMsg();
    bool is_with_img=false;
    ros::param::get("~is_with_img",is_with_img);
    if(is_with_img) hello_srv.request.img=*msgImage;


    bool is_echo=true; // 是否打印消息
    ros::param::get("~is_echo",is_echo);

    int loop_times=100; // 循环发送请求次数
    // nh.param("loop_times",loop_times,100);
    ros::param::get("~loop_times",loop_times);  // 从参数服务器获取循环次数，不用每次都编译了

    double request_delay_sum=0; // 请求总延迟时间
    double response_delay_sum=0; // 响应总延迟时间


    for(int i=0;i<loop_times;i++)
    {
        ROS_INFO("Request No.%d sent",i);

        hello_srv.request.stamp_requset=ros::Time::now();//加上发送的时间戳
        bool flag = client.call(hello_srv); // 发送请求

        ROS_INFO("Response No.%d arrived",i);
        ROS_INFO("The response is \"%s\"",hello_srv.response.response.c_str());

        if(flag) // 请求成功
        {
            double_t response_arrived_time=ros::Time::now().toSec();   // 请求到达时间
            double_t request_sent_time=hello_srv.request.stamp_requset.toSec();
            double_t request_arrived_time=hello_srv.response.stamp_request_arrived.toSec();
            double_t response_sent_time=hello_srv.response.stamp_response.toSec();
            request_delay_sum+=request_arrived_time-request_sent_time;
            response_delay_sum+=response_arrived_time-response_sent_time ;
            if (is_echo)
            {
                ROS_INFO("request processed successfully. Results are as below:");
                // 打印发送请求的时间
                std::cout<<"request sent time : "<<std::fixed<<std::setprecision(16)<<request_sent_time<<std::endl;
                // 打印收到请求的时间
                std::cout<<"request arrived time : "<<std::fixed<<std::setprecision(16)<<hello_srv.response.stamp_request_arrived.toSec()<<std::endl;
                // 打印发送响应的时间
                std::cout<<"response arrived time : "<<std::fixed<<std::setprecision(16)<<response_arrived_time<<std::endl;
                // 打印收到响应的时间
                std::cout<<"response sent time : "<<std::fixed<<std::setprecision(16)<<response_sent_time<<std::endl;
                
                std::cout<<"delay between request sent and request arrived : "<<request_arrived_time-request_sent_time << "s"<<std::endl;
                std::cout<<"delay between request arrived and response arrived : "<<response_arrived_time-response_sent_time <<"s"<<std::endl;
            }

        }
        else{
            ROS_INFO("request processed failed.");
            ROS_ERROR("request processed failed.");
        }
    }

    std::cout<<"average delay between request sent and request arrived : "<<request_delay_sum/loop_times << "s"<<std::endl;
    std::cout<<"avefage delay between request arrived and response arrived : "<<response_delay_sum/loop_times<<"s"<<std::endl;
    return 0;
}
