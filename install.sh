#! /bin/bash  # employ bash shell

echo "Run Install"

timedatectl set-timezone Asia/Shanghai
apt-get install cron
apt-get install cmake
apt-get install lm-sensors

#DEV
git clone https://github.com/wiringX/wiringX.git
cd wiringX
mkdir build
cd build
cmake ..
make -j4
cpack -G DEB
sudo dpkg -i libwiringx*.deb

chmod 777 /SSD1306/ -R