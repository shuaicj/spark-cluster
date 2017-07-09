## Spark Cluster

This is a complete [Apache Spark](https://spark.apache.org) cluster based on docker-compose.
It consists of all three types of components,
including `Spark Master`, `Spark Slave`, `Spark Driver`.
See [Spark Cluster Component](https://spark.apache.org/docs/latest/cluster-overview.html).

#### Get Started
1. Start a spark cluster containing 2 slaves, and enter `spark driver` bash.
> `./start.sh 2`
2. Run a spark sample app which prints out all IPs of spark slaves.
> `cd /spark/sample/ && ./run.sh`
3. If everything goes right, it prints things like `All slave IPs: [172.18.0.3, ...]`.
Of course you can run your own spark apps via `spark-submit` in `spark driver` bash.
You can also check things on spark portal [http://localhost:8080](http://localhost:8080).

#### Docker Volume
By default, your home dir of host machine is mounted as path `/spark/home`
on `spark driver`. It's convenient to locate your spark app on `spark driver`
while it is built on your host machine, which is so common in development.

#### Reference
- a basic spark environment
    - [shuaicj/docker-spark](https://github.com/shuaicj/docker-spark)
- all spark cluster components
    - [shuaicj/docker-spark-master](https://github.com/shuaicj/docker-spark-master)
    - [shuaicj/docker-spark-slave](https://github.com/shuaicj/docker-spark-slave)
    - [shuaicj/docker-spark-driver](https://github.com/shuaicj/docker-spark-driver)
