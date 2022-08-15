#include <ros/ros.h>
#include "std_msgs/String.h"
#include "task2/StringStamped.h"


int main(int argc, char *argv[])
{
    
    ros::init(argc,argv,"publisher");
    ros::NodeHandle nh;
    ros::Publisher pub=nh.advertise<task2::StringStamped>("topic_hello",10);


    int loop_times=atoi(argv[1]);
    // if(!(loopTimesCmd)>>loop_times) return 1;


    
    task2::StringStamped msgStringStamped;
    
    std_msgs::String msgString;
    std::string msg_front="hello,world";
    int count;
    ros::Rate r(100);
    ros::Duration(0.5).sleep(); // 等500ms，话题建立

    for(int i=0;i<loop_times;i++)
    {
        msgStringStamped.header.stamp=ros::Time::now();
        msgStringStamped.header.frame_id=std::to_string(count);
        std::stringstream ss;
        ss<<msg_front<<" ";
        msgStringStamped.string.data=ss.str();
        pub.publish(msgStringStamped);
        r.sleep();
        count++;
        //std::cout<<std::fixed<<std::setprecision(10)<<msgStringStamped.header.stamp.toSec()<<std::endl;
        ros::spinOnce();
    }


    return 0;
}
