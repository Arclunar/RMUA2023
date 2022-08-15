#include <ros/ros.h>
#include "task2/hello.h"

int main(int argc, char  *argv[])
{
    setlocale(LC_ALL,"");

    ros::init(argc,argv,"client");

    ros::NodeHandle nh;

    ros::ServiceClient client = nh.serviceClient<task2::hello>("hello_service");

    ros::service::waitForService("hello_service");

    task2::hello hello_srv;
    hello_srv.request.request="hello,world";
    hello_srv.request.stamp_requset=ros::Time::now();
    
    bool is_echo=false;
    int loop_times=100;
    double request_delay_sum=0;
    double response_delay_sum=0;

    for(int i=0;i<loop_times;i++)
    {
        ROS_INFO("Request No.%d sent",i);
        bool flag = client.call(hello_srv);
        ROS_INFO("Response No.%d arrived",i);
        if(flag)
        {
            double_t response_arrived_time=ros::Time::now().toSec();
            double_t request_sent_time=hello_srv.request.stamp_requset.toSec();
            double_t request_arrived_time=hello_srv.response.stamp_response.toSec();
            request_delay_sum+=request_arrived_time-request_sent_time;
            response_delay_sum+=response_arrived_time-request_arrived_time ;
            if (is_echo)
            {
                ROS_INFO("request processed successfully. Results are as below:");
                // 打印发送请求的时间
                std::cout<<"request sent time : "<<std::fixed<<std::setprecision(16)<<request_sent_time<<std::endl;
                // 打印收到请求的时间
                std::cout<<"response arrived time : "<<std::fixed<<std::setprecision(16)<<hello_srv.response.stamp_response.toSec()<<std::endl;
                // 打印收到响应的时间
                std::cout<<"response arrived time : "<<std::fixed<<std::setprecision(16)<<response_arrived_time<<std::endl;

                std::cout<<"delay between request sent and request arrived : "<<request_arrived_time-request_sent_time << "s"<<std::endl;
                std::cout<<"delay between request arrived and response arrived : "<<response_arrived_time-request_arrived_time <<"s"<<std::endl;
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
