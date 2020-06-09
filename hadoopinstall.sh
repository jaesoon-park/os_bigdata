
#!/bin/bash

sudo apt update

echo "-----------------UPDATED-----------------"

sudo apt install openjdk-8-jdk
java -version

echo "-------------JAVA INSTALLED--------------"

wget http://mirror.navercorp.com/apache/hadoop/common/hadoop-2.9.2/hadoop-2.9.2.tar.gz
tar xvfz hadoop-2.9.2.tar.gz

mkdir ~/apps
mv hadoop-2.9.2 ~/apps
cd ~/apps
ln -s hadoop-2.9.2 hadoop

echo "-------------HADOOP DOWNLOADED-----------"

sudo groupadd hadoop
sudo usermod -a -G hadoop ubuntu

echo "-------------HADOOP USER ADDED-----------"

cat<<\EDF>>~/.bashrc
#HADOOP VARIABLES START
export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64
export HADOOP_HOME=/home/ubuntu/apps/hadoop
export PATH=$PATH:$HADOOP_HOME/bin
export PATH=$PATH:$HADOOP_HOME/sbin
export HADOOP_MAPRED_HOME=$HADOOP_HOME
export HADOOP_COMMON_HOME=$HADOOP_HOME
export HADOOP_HDFS_HOME=$HADOOP_HOME
export YARN_HOME=$HADOOP_HOME
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
export HADOOP_OPTS="-Djava.library.path=$HADOOP_HOME/lib/native"
#HADOOP VARIABLES END
EDF

#source ~/.bashrc
eval "$(cat ~/.bashrc | tail -n +12)"

hadoop version
