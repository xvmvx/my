#!/bin/bash

#设置输出语言
export LANG=en_US.UTF-8

#定义需要执行的项目
project=jarweb.jar

#输出信息
echo "begin>>>>>系统更新>>>>>>>>>>>>>>>"
sudo apt update && sudo apt upgrade 
echo "<<<<<<<<<<完成更新<<<<<<<<<<<<<<"
echo "begin>>>>>安装>>>>>Docker>>>>>>>>>>"
sudo apt install docker && sudo apt install docker-compose
sudo systemctl enable --now docker
sudo chmod +x /usr/local/bin/docker-compose
echo "<<<<<<<<<<Docker已安装<<<<<<<<<<<<<<"
echo "begin>>>>>安装>>>>>宝塔面板>>>>>>>>>>"
wget -O install.sh http://f.cccyun.cc/bt/install_6.0.sh && bash install.sh
sed -i "s|bind_user == 'True'|bind_user == 'XXXX'|" /www/server/panel/BTPanel/static/js/index.js
rm -f /www/server/panel/data/bind.pl
curl -sSO https://raw.githubusercontent.com/ztkink/bthappy/main/one_key_happy.sh && bash one_key_happy.sh
wget -O optimize.sh http://f.cccyun.cc/bt/optimize.sh && bash optimize.sh
curl https://io.bt.sy/install/update_panel.sh|bash
echo "<<<<<<<<<<宝塔面板已安装<<<<<<<<<<<<<<"
echo "begin>>>>>设置>>>>>宝塔面板>>>>>>>>>>"
bt
5
Guwei888
6
goodway
11
y
echo "begin>>>>>matrix>>>>>开始安装>>>>>>>>>>"
cd /
cd /home
git clone https://xvmvx.github.com/my/matrix.git
cd /matrix/npm
# 建立一个 docker network
docker network create matrix
docker-compose up -d

