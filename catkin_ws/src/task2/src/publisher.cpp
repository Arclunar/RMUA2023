// ****************************************************
// file name : publisher.cpp
// date : 8/15/2022
// author : howard.zheng
// description : task 2 publisher
// editing history : 
//      8/16/2022 add ros::param, topic message with image attached, test the influence of msg load
// ****************************************************

#include <ros/ros.h>
#include "std_msgs/String.h"
#include "task2/StringStamped.h"
#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>


int main(int argc, char *argv[])
{
    //*** 初始化结点
    ros::init(argc,argv,"publisher");
    ros::NodeHandle nh;

    //*** 发布话题
    ros::Publisher pub=nh.advertise<task2::StringStamped>("topic_hello",100);

    
    task2::StringStamped msgStringStamped;
    
    //** 字符串信息
    std_msgs::String msgString;
    std::string msg_front="hello,world";

    //** 发送图片
    cv::Mat img;
    std::string filename;
    ros::param::get("filename",filename); //获取图片文件名字
    img=cv::imread(filename); // 读取图片
    cv::namedWindow("transfered image",CV_WINDOW_NORMAL);
    cv::resizeWindow("transfered image",848,640);
    cv::imshow("transfered image",img);
    cv::waitKey(0);
    sensor_msgs::ImagePtr msgImage; 
    msgImage=cv_bridge::CvImage(std_msgs::Header(),"bgr8",img).toImageMsg();
    



    //** 循环次数
    // int loop_times=atoi(argv[1]);
    int loop_times;
    nh.param("/loop_times",loop_times,5);
    // ros::param::get("/loop_times",loop_times);
    ROS_INFO("loop times : %d",loop_times);

    ros::Rate r(100);
    ros::Duration(0.5).sleep(); // 等500ms，话题建立

    bool is_with_img=false;
    ros::param::get("is_with_img",is_with_img);
    if(is_with_img)
        msgStringStamped.img=*msgImage; 


    for(int i=0;i<loop_times;i++)
    {

        msgStringStamped.string.data=msg_front;
        msgStringStamped.stamp=ros::Time::now(); //添加时间戳

        //*** 发布消息
        pub.publish(msgStringStamped);
        ROS_INFO("published No.%d",i+1);
        r.sleep();
        //std::cout<<std::fixed<<std::setprecision(10)<<msgStringStamped.header.stamp.toSec()<<std::endl;
        ros::spinOnce();
    }


    return 0;
}
