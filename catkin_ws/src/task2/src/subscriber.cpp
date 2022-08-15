#include <ros/ros.h>
#include "std_msgs/String.h"
#include "task2/StringStamped.h"


int loop_times=100;

void stringStampedCallback(const task2::StringStamped::ConstPtr & stringStampedPtr)
{
    static int count=0;
    static double delay_sum=0;
    bool is_echo_time=false;
    count++;
    std::cout<<"No."<<count<<" ";
    ros::Time right_now=ros::Time::now();
    double msg_sent_time=stringStampedPtr->header.stamp.toSec();
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

    if(count==loop_times)
    {
        std::cout<<"average delay time : "<<std::fixed<<std::setprecision(16)<<delay_sum/loop_times<<std::endl;
    }

}


int main(int argc, char *argv[])
{
    ros::init(argc,argv,"subscriber");
    ros::NodeHandle nh;
    ros::Subscriber sub=nh.subscribe("topic_hello",10,stringStampedCallback);
    ROS_INFO("%s has subscribed topic %s","\"subscriber\"","\"topic_hello\"");

    ros::spin();
    return 0;
}
