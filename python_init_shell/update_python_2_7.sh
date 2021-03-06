#!/bin/bash 

# by yeweijie
# 2017-06-13

cd  /opt
wget http://192.168.6.184/python/Python-2.7.11.tgz

tar  -zxvf  Python-2.7.11.tgz

cd Python-2.7.11

./configure  

make all 

make install 

make clean 

make distclean 

/usr/local/bin/python2.7 -V 


sleep  3 

echo "python2.7 安装完成 "
sleep 5 


mkdir -p ~/.pip          # 使用豆瓣pip源
#vim ~/.pip/pip.conf
echo -e "[global]\n" >> ~/.pip/pip.conf
# 清华的源比豆瓣的源快很多
echo -e "index-url = https://pypi.tuna.tsinghua.edu.cn/simple/   \n " >> ~/.pip/pip.conf
yum -y  install  python-pip
pip install --upgrade pip

echo "配置pip完成"
