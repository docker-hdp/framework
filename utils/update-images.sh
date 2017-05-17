#!/bin/bash

REPO_HOME=`pwd`
CONFIG_HOME=$REPO_HOME/conf

cd $REPO_HOME/centos-base && chmod +x build.sh && ./build.sh $CONFIG_HOME
cd $REPO_HOME/zookeeper && chmod +x build.sh && ./build.sh $CONFIG_HOME
cd $REPO_HOME/hadoop-master && chmod +x build.sh && ./build.sh $CONFIG_HOME
cd $REPO_HOME/hadoop-worker && chmod +x build.sh && ./build.sh $CONFIG_HOME
cd $REPO_HOME/hbase-daemon && chmod +x build.sh && ./build.sh $CONFIG_HOME
#cd $REPO_HOME/solr && chmod +x build.sh && ./build.sh $CONFIG_HOME