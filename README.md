#RUMA2023
# Task 1
题目描述： 
构造两个ROS 节点，一个发送视频数据流，另一个接收视频数据流，实现节
点间视频传输，  具体要求如下：   
1.使用CMAKE 构造结构完整的ROS 节点。   
2.找到合适的数据类型储存视频数据流。   
3.理解ros::spin()和ros::spinonce 的区别。   
4.精简代码结构，附带详细注释，注意私有、公有变量和全局变量在ROS 循环中
的特性。 
5.用launch 文件同时启动 
6.需要使用ROS 自带的OpenCV 库 
（此题需要提交运行演示视频）
# Task 2
题目描述： 
 分别利用客户端\服务端与话题的方式传递“Hello world”信息，测试两者接收
延时 
要求： 
1.延时主要指发布到接收的之间的延时，不是两次发送之间的延时 
2.传递信息时要加上时间戳，根据发布的时间与接受的时间计算延时 
3.发送100 次，计算平均延时 
4.更改循环频率（比如1，10，100，1000），增加传输内容（内容自定），查看对
上述延时是否有影响。 
5.说明话题和服务端客户端的区别及各自的优势 
（此题需要提供对比数据、原始数据截屏及相应的文字说明
# Task 3
学习ros 当中的tf 坐标变换，编写程序，总共产生三只小乌龟，让每个小乌
龟在前一个左后方 45°距离为 2  的位置，编写相应 launch 文件做到一次性启动
所有程序。
<image src="image/01.png">