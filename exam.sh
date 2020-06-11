#!/bin/sh

hdfs namenode -format

start-dfs.sh
start-yarn.sh 
mr-jobhistory-daemon.sh start historyserver
jps

hdfs dfs -mkdir /user
hdfs dfs -mkdir /user/ubuntu

hdfs dfs -put $HADOOP_HOME/etc/hadoop input
hadoop jar /home/ubuntu/apps/hadoop/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.9.2.jar grep input output 'dfs[a-z.]+'
