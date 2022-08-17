// ****************************************************
// file name : subscriber.cpp
// date : 8/15/2022
// author : howard.zheng
// description : task 2 subscriber
// editing history : 
//      8/16/2022 add ros::param, topic message with image attached, test the influence of msg load
// ****************************************************

#include <ros/ros.h>
#include "std_msgs/String.h"
#include "task2/StringStamped.h"
#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>




void stringStampedCallback(const task2::StringStamped::ConstPtr & stringStampedPtr)
{
    //** 获取接收信息时间
    ros::Time right_now=ros::Time::now();  

    cv_bridge::CvImageConstPtr cv_ptrRGB;

   

    static int count=0;        //消息计数
    static double delay_sum=0; // 延迟求和
    bool is_echo_time=false;   // 是否显示每条消息的发送和接收时间
    count++;
    std::cout<<"No."<<count<<" ";
    double msg_sent_time=stringStampedPtr->stamp.toSec();
    double msg_arrived_time=right_now.toSec();
    if (is_echo_time)
    {
        std::cout<<"timestamped in message:";
        std::cout<<std::fixed<<std::setprecision(16)<<msg_sent_time<<std::endl;
        std::cout<<"received timestamped:";
        std::cout<<std::fixed<<std::setprecision(16)<<msg_arrived_time<<std::endl;
    }
    std::cout<<std::fixed<<std::setprecision(16)<<"delay time : "<<msg_arrived_time-msg_sent_time<<std::endl;
    delay_sum+=msg_arrived_time-msg_sent_time;


    int loop_times;
    ros::param::get("/loop_times",loop_times);
    if(count==loop_times)
    {
        std::cout<<"average delay time : "<<std::fixed<<std::setprecision(16)<<delay_sum/loop_times<<std::endl;
        
        bool is_with_img=false;
        ros::param::get("is_with_img",is_with_img);
        if(is_with_img)
        {
            try
                {
                    cv_ptrRGB = cv_bridge::toCvCopy(stringStampedPtr->img,"bgr8");
                }
            catch(const std::exception& e)
                {
                    ROS_ERROR("cv_bridge exception : %s",e.what());
                    return;
                }
            cv::Mat rgb=cv_ptrRGB->image;

            cv::namedWindow("received image",CV_WINDOW_NORMAL);
            cv::resizeWindow("received image",848,640);
            cv::imshow("received image",rgb);
            cv::waitKey(0);
        }
    }

}


int main(int argc, char *argv[])
{
    ros::init(argc,argv,"subscriber");
    ros::NodeHandle nh;
    ros::Subscriber sub=nh.subscribe("topic_hello",100,stringStampedCallback);
    ROS_INFO("%s has subscribed topic %s","\"subscriber\"","\"topic_hello\"");

    ros::spin();
    return 0;
}
