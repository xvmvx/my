#!/bin/sh

#设置输出语言
export LANG=en_US.UTF-8

#定义需要执行的项目
project=jarweb.jar

#输出信息
echo "begin>>>>>>>>>>>>>>>>>>>>"

#获取当前服务器时间，并格式化
dqtime=$(date "+%Y-%m-%d %H:%M:%S")

#输出当前服务器时间
echo "datetime: ${dqtime}"

#获取项目正在运行的进程PID（方法有很多，这是其它一种）
javapid=$(ps -ef|grep $project |grep -v grep|awk '{print $2}')

#输出PID
echo "javapid: $javapid"

#通过项目的PID，判断有没有在运行
process=$(ps -ef |grep $javapid |grep java)
echo "process: $process"
if [ "$process" = "" ]
   then
      echo "Not found>$project<, running Java program"
else
$ chmod +x bt.sh 
$ ./bt.sh 
