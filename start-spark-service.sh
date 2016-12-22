#!/bin/sh

echo "starting master..."
start-master.sh

echo "starting master..."
start-slave.sh 'spark://localhost:7077'

tail -f /usr/local/spark/logs/spark--org.apache.spark.deploy.master.Master-1-spark.out
