# Spark Cluster as a Service in Docker

This extends the [docker-spark](https://github.com/P7h/docker-spark) repo,
which creates a [Spark](http://spark.apache.org) cluster in a
[docker](http://www.docker.com) image by making it a service (avoid having to
run the start commands) and/or use it in a docker compose configuration.

Note that the version of the image is defined in
[makefile](https://github.com/plandes/docker-spark-service/blob/master/makefile#L1)
and coresponds to the `docker-spark` docker image and Spark version.


## Obtaining the Image

The image is available on
[docker hub](https://hub.docker.com/r/plandes/docker-spark-service/) or by
pulling it with:
```bash
$ docker pull plandes/docker-spark-service
```


## Docker Compose

The following is an example docker compose file:
```yaml
spark-service:
  container_name: spark
  image: plandes/docker-spark-service:2.0.2
  hostname: spark
  ports:
    - "8080:8080"
    - "8081:8081"
    - "4040:4040"
  volumes:
    - /Volumns/spark-mount:/root
  links:
    - nlpserv
```

To use this, create the mount point and start docker:
```bash
$ mkdir -p /Volumns/spark-mount
$ docker-compose up -d
```


## License

Copyright © 2016, 2017 Paul Landes

Apache License version 2.0

Licensed under the Apache License, Version 2.0 (the "License"); you may not use
this file except in compliance with the License.  You may obtain a copy of the
License at

[http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software distributed
under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
CONDITIONS OF ANY KIND, either express or implied.  See the License for the
specific language governing permissions and limitations under the License.
