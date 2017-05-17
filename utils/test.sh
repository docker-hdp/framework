#!/bin/bash

HDFS_USER=hdfs
CLIENT_USER=client

useradd $CLIENT_USER
usermod -a -G users $CLIENT_USER

sudo su - $HDFS_USER 
hdfs dfs -mkdir /user/$CLIENT_USER
hdfs dfs -chown $CLIENT_USER:$CLIENT_USER /user/$CLIENT_USER 
hdfs dfs -chmod -R 755 /user/$CLIENT_USER

su - $CLIENT_USER
/usr/hdp/current/hadoop-client/bin/hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-examples-*.jar teragen 10000 tmp/teragenout
/usr/hdp/current/hadoop-client/bin/hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-examples-*.jar terasort tmp/teragenout tmp/terasortout