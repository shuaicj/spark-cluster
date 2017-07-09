## Spark Cluster

This is a complete [Apache Spark](https://spark.apache.org) cluster based on docker-compose.
It consists of all three types of components,
including `Spark Master`, `Spark Slave`, `Spark Driver`.
See [Spark Cluster Component](https://spark.apache.org/docs/latest/cluster-overview.html).

#### Run
1. Start the master and slave
> `docker-compose up -d master slave`
2. Scale the slave number as you need
> `docker-compose scale slave=3`
3. Start the driver
> `docker-compose run driver`
4. Run your spark apps via `spark-submit` in driver bash console.
   Here, we run a sample which prints out all IPs of spark slaves.
> `cd /spark/sample/ && ./run.sh`
5. Check results on spark portal [http://localhost:8080](http://localhost:8080)

#### Reference
- a basic spark environment
    - [shuaicj/docker-spark](https://github.com/shuaicj/docker-spark)
- all spark cluster components
    - [shuaicj/docker-spark-master](https://github.com/shuaicj/docker-spark-master)
    - [shuaicj/docker-spark-slave](https://github.com/shuaicj/docker-spark-slave)
    - [shuaicj/docker-spark-driver](https://github.com/shuaicj/docker-spark-driver)
