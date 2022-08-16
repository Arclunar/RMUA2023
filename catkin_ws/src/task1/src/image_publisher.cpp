#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>
#include <sstream>
#include "std_msgs/Float64.h"

int main(int argc,char *argv[])
{
    // 没有指定视频
    if(argv[1]==NULL) 
    {
        ROS_INFO("no specific video?");
        return 1;
    }

    
    setlocale(LC_ALL,"");

    ros::init(argc,argv,"image_publisher");
    ros::NodeHandle nh;
    image_transport::ImageTransport it(nh);
    image_transport::Publisher pub=it.advertise("camera/image",1);
    ros::Publisher pub_fps=nh.advertise<std_msgs::Float64>("fps_topic",1);
    
    // 字符串流，其实就是把输入的参数传入一个字符串
    std::istringstream video_sourceCmd(argv[1]);

    // source 0 --> 摄像头
    int video_source;

    if(!(video_sourceCmd)>>video_source) return 1;


    // 用cv获取
    cv::VideoCapture cap("/home/anifan/rmua/video_source/01.mp4");
    if(!cap.isOpened()) 
    {
        ROS_INFO("Reading video failed");
        return 1;
    }
            
    std::cout << "视频中图像的宽度" << cap.get(cv::CAP_PROP_FRAME_WIDTH) << std::endl;
    std::cout << "视频图像的高度" << cap.get(cv::CAP_PROP_FRAME_HEIGHT) << std::endl;
    std::cout << "视频总帧率" << cap.get(cv::CAP_PROP_FPS) << std::endl;
    std::cout << "视频总帧数" << cap.get(cv::CAP_PROP_FRAME_COUNT) << std::endl;

    // // 把帧率发出去
    // std_msgs::Float64 msgFps;
    // msgFps.data=cap.get(cv::CAP_PROP_FPS);
    
    ros::param::set("fps",cap.get(cv::CAP_PROP_FPS));
    
    cv::Mat frame;

    sensor_msgs::ImagePtr msgImage;

    ros::Rate loop_rate(5);


    cv::namedWindow("transfered image",CV_WINDOW_NORMAL);
    cv::resizeWindow("transfered image",848,640);

    int count=0; // 帧记数
    while(nh.ok())
    {
        // pub_fps.publish(msgFps);
        cap>>frame;
        // 转成msgs数据
        if(!frame.empty())
        {
            count++;
            cv::imshow("transfered image",frame);
            msgImage=cv_bridge::CvImage(std_msgs::Header(),"bgr8",frame).toImageMsg();
        }
        pub.publish(msgImage);
        ROS_INFO("read the %d th frame successfully!",count);
        cv::waitKey(1000.0/cap.get(cv::CAP_PROP_FPS));
        
    }

    ros::spinOnce();
    loop_rate.sleep();

    return 0;


}