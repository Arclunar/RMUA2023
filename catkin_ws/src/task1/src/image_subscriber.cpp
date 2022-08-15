#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>
#include <sstream>
#include "std_msgs/Float64.h"

// 优化
// 将fps加入参数服务器，不需要使用全局变量

cv::VideoWriter writer;

// 订阅帧数回调函数
// void fpsCallback(const std_msgs::Float64ConstPtr & msgFps)
// {
//     //ROS_INFO("msgFtp->data is %f",msgFps->data);
//     fps=msgFps->data;
// }

// 订阅图像回调函数
void imageCallback(const sensor_msgs::ImageConstPtr & msgRGB)
{
    // 将msg转成cv image格式
    cv::Mat frame;
    cv_bridge::CvImageConstPtr cv_ptrRGB;
    cv_ptrRGB = cv_bridge::toCvShare(msgRGB);
    try
    {
        cv_ptrRGB = cv_bridge::toCvShare(msgRGB);
    }
    catch(const std::exception& e)
    {
        ROS_ERROR("cv_bridge exception : %s",e.what());
        return;
    }

    frame=cv_ptrRGB->image;

    writer.write(frame);
    cv::imshow("received image",frame);

    double fps;
    ros::param::get("fps",fps);
    cv::waitKey(1000.0/fps);
}


int main(int argc, char *argv[])
{
    cv::Size size(1920,1080);


    
    setlocale(LC_ALL,"");

    ros::init(argc,argv,"image_subscriber");
    ros::NodeHandle nh;

    cv::namedWindow("received image",CV_WINDOW_NORMAL);
    cv::resizeWindow("received image",848,640);

    image_transport::ImageTransport it(nh);
    // ros::Subscriber sub_fps=nh.subscribe("fps_topic",1,fpsCallback);
    ros::Duration(0.03).sleep();

    // 从参数服务器获取帧率
    double fps;
    ros::param::get("fps",fps);

    ROS_INFO("received fps is %f",fps);
    writer.open("/home/anifan/rmua/ROS_hw/video_source/saved.avi", CV_FOURCC('M', 'J', 'P', 'G'), fps, size, true);

    image_transport::Subscriber sub=it.subscribe("camera/image",1,imageCallback);
    
    ros::spin();

    // 推出程序后关闭视频流，其实前面有spin，写了也没啥用
    writer.release();

    return 0;
}
