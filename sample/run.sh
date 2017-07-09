#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

spark-submit \
    --class shuaicj.hello.spark.slave.ip.SlaveIpApp \
    --master spark://master:7077 \
    $DIR/hello-slave-ip-1.0.0.jar
