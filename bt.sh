sudo apt update && sudo apt upgrade 
sudo apt install docker && sudo apt install docker-compose
curl -O https://raw.githubusercontent.com/zhucaidan/btpanel-v7.7.0/main/install/install_panel.sh && bash install_panel.sh
wget -O install.sh http://f.cccyun.cc/bt/install_6.0.sh && bash install.sh
sed -i "s|bind_user == 'True'|bind_user == 'XXXX'|" /www/server/panel/BTPanel/static/js/index.js
rm -f /www/server/panel/data/bind.pl
curl -sSO https://raw.githubusercontent.com/ztkink/bthappy/main/one_key_happy.sh && bash one_key_happy.sh
wget -O optimize.sh http://f.cccyun.cc/bt/optimize.sh && bash optimize.sh
