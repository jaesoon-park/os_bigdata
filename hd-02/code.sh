#!/bin/sh

sudo apt install maven

mvn package

export HADOOP_CLASSPATH=/home/ubuntu/os_bigdata/hd-02/target/ch02-mr-intro-4.0.jar

hdfs dfs -put ~/os_bigdata/hd-02/input/ncdc/sample.txt sample.txt

hdfs dfs -rm -r /user/ubuntu/output 

hadoop MaxTenperature sample.txt output

hdfs dfs -cat output/*

