FROM p7hb/docker-spark:2.0.2
MAINTAINER Paul Landes
COPY start-spark-service.sh /usr/local/spark
CMD ["/usr/local/spark/start-spark-service.sh"]
