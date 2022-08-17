// ****************************************************
// file name : image_subscriber.cpp
// date : 8/15/2022
// author : howard.zheng
// description : task 1 subscriber
// editing history : 
//      
// ****************************************************


#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>
#include <sstream>
#include "std_msgs/Float64.h"


// 优化
// 将fps加入参数服务器，不需要使用全局变量

cv::VideoWriter writer;


// 订阅图像回调函数
void imageCallback(const sensor_msgs::ImageConstPtr & msgRGB)
{
    //*** 将msg转成cv image格式
    cv::Mat frame;
    cv_bridge::CvImageConstPtr cv_ptrRGB;
    try
    {
        cv_ptrRGB = cv_bridge::toCvShare(msgRGB);
    }
    catch(const std::exception& e)
    {
        ROS_ERROR("cv_bridge exception : %s",e.what());
        return;
    }

    //*** 获取 cv格式图像
    frame=cv_ptrRGB->image;

    //*** 图像写入视频
    writer.write(frame);


    //*** 根据给定的fps播放图像
    cv::imshow("received image",frame);
    double fps;
    ros::param::get("fps",fps);
    cv::waitKey(1000.0/fps); // 根据fps设置延时
}


int main(int argc, char *argv[])
{


    //** 支持中文
    setlocale(LC_ALL,"");

    //** 初始化结点
    ros::init(argc,argv,"image_subscriber");
    ros::NodeHandle nh;

    //*** 打开窗口，准备播放接收到的视频
    cv::namedWindow("received image",CV_WINDOW_NORMAL);
    cv::resizeWindow("received image",848,640);

    //** 使用ImageTransport 接收图像对象
    image_transport::ImageTransport it(nh);
    ros::Duration(0.3).sleep();

    //*** 从参数服务器获取帧率和尺寸
    double fps;
    double width,height;

    ros::param::get("fps",fps);
    ros::param::get("video_width",width);
    ros::param::get("video_height",height);

    ROS_INFO("received fps is %f",fps);
    ROS_INFO("width:%f",width);
    ROS_INFO("height:%f",height);
    
    cv::Size size(width,height);

    //*** 保存文件
    writer.open("/home/anifan/rmua/video_source/saved.avi", CV_FOURCC('M', 'J', 'P', 'G'), fps, size, true);

    //*** 订阅 
    image_transport::Subscriber sub=it.subscribe("camera/image",1,imageCallback);
    
    ros::spin();

    //*** 退出程序后关闭视频流，其实前面有spin，写了也没啥用
    writer.release();

    return 0;
}
