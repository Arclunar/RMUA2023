#!/bin/bash
roslaunch --screen task2 server.launch & sleep 5
roslaunch --screen task2 client.launch & sleep 0.1
wait;
exit 0;