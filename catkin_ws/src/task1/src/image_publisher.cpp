#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>
#include <sstream>
#include "std_msgs/Float64.h"

int main(int argc,char *argv[])
{
    //*** 如果没有指定视频，推出
    if(argv[1]==NULL) 
    {
        ROS_INFO("no specific video?");
        return 1;
    }

    //*** 支持中文显示
    setlocale(LC_ALL,"");

    //*** 初始化结点
    ros::init(argc,argv,"image_publisher");
    ros::NodeHandle nh;

    //*** 实例化 ImageTransport对象
    image_transport::ImageTransport it(nh);

    //*** 发布话题
    image_transport::Publisher pub=it.advertise("camera/image",1); // 图像
    
    //*** （optional） 使用摄像头
    // 字符串流，其实就是把输入的参数传入一个字符串
    std::istringstream video_sourceCmd(argv[1]);

    // source 0 --> 摄像头
    int video_source;

    if(!(video_sourceCmd)>>video_source) return 1;


    //*** 用cv获取视频文件
    std::string filename;
    ros::param::get("~filename",filename);
    cv::VideoCapture cap(filename);
    if(!cap.isOpened()) 
    {
        ROS_INFO("Reading video failed");
        return 1;
    }

    ROS_INFO("视频图像的宽度：%f",cap.get(cv::CAP_PROP_FRAME_WIDTH));
    ROS_INFO("视频图像的高度：%f",cap.get(cv::CAP_PROP_FRAME_HEIGHT));
    ROS_INFO("视频总帧率：%f",cap.get(cv::CAP_PROP_FPS));
    ROS_INFO("视频总帧数：%f",cap.get(cv::CAP_PROP_FRAME_COUNT));


    //*** 根据视频的帧数设定参数服务器中的参数fps,视频宽和高
    ros::param::set("fps",cap.get(cv::CAP_PROP_FPS));
    ros::param::set("video_width",cap.get(cv::CAP_PROP_FRAME_WIDTH));
    ros::param::set("video_height",cap.get(cv::CAP_PROP_FRAME_HEIGHT));

    
    cv::Mat frame;

    sensor_msgs::ImagePtr msgImage;

    ros::Rate loop_rate(5);

    //*** 打开窗口，播放视频
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
        //*** 发布消息
        pub.publish(msgImage);
        ROS_INFO("read the %d th frame successfully!",count);
        cv::waitKey(1000.0/cap.get(cv::CAP_PROP_FPS));
        
    }

    ros::spinOnce();
    loop_rate.sleep();

    return 0;


}