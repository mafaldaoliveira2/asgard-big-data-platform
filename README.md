<!-- PROJECT LOGO -->
<p align="center">
<!--   <a href="https://github.com/mafaldaoliveira2/asgard-big-data-platform/">
      <img src="https://i.ibb.co/mXnHMqs/ASGARD-white-bg.png" alt="Asgard Big Data Platform" border="0">
  </a> -->
  <h1 align="center">Asgard Big Data Platform</h1>
  <p align="center">
    <a href="http://www.varajao.com/uc/ptsi/"><strong>Projeto de Tecnologias e Sistemas de Informação</strong></a>
    <br />
    Team 401
    <br />
    <br />
    MLOps Scale Machine Learning in the Enterprise
    <br />
    <a href="https://github.com/mafaldaoliveira2/asgard-big-data-platform/documentation"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://www.youtube.com/watch?v=P5swjkpxF8k" target="_blank" rel="noopener noreferrer">View Demo</a> -
    <a href="https://github.com/mafaldaoliveira2/asgard-big-data-platform/issues">Report Bug</a> - 
    <a href="https://github.com/mafaldaoliveira2/asgard-big-data-platform/issues">Request Feature</a>
  </p>
</p>

## Title
MLOps Scale Machine Learning in the Enterprise

## Proponent
<a href="https://pt.linkedin.com/in/apilastri"><strong>André Pilastri - CCG </strong></a>

## Client entity
<a href="https://www.ccg.pt/"><strong>Centro de Computação Gráfica - CCG </strong></a>

## Architecture 
<p align="center">
      <img src="https://github.com/mafaldaoliveira2/asgard-big-data-platform/blob/master/resources/architecture.svg?raw=true" alt="Presto Connection" width="100%"/>
</p>

## Apache NiFi
> An easy to use, powerful, and reliable system to process and distribute data.

![](https://miro.medium.com/max/2596/1*amYjuptQZdMStCuJ0aDtNg.gif)

Apache NiFi supports powerful and scalable directed graphs of data routing, transformation, and system mediation logic. Some of the high-level capabilities and objectives of Apache NiFi include:

- Web-based user interface
    - Seamless experience between design, control, feedback, and monitoring
- Highly configurable
    - Loss tolerant vs guaranteed delivery
    - Low latency vs high throughput
    - Dynamic prioritization
    - Flow can be modified at runtime
    - Back pressure
- Data Provenance
    - Track dataflow from beginning to end
- Designed for extension
    - Build your own processors and more
    - Enables rapid development and effective testing
- Secure
    - SSL, SSH, HTTPS, encrypted content, etc...
    - Multi-tenant authorization and internal authorization/policy management

You can check the [NiFi docs](https://nifi.apache.org/docs.html) or use [Apache NiFi Slack Workspace](https://apachenifi.slack.com/) for questions, suggestions and everything in between.

### Setting Up
**In the *Asgard Big Data Platform* project root:**

1. Give execute permission to dev folder of Apache NiFi:
```bash
chmod -R +x ./apache-nifi/dev
```
2. Build Apache NiFi customized image:
```bash
./apache-nifi/dev/build-apache-nifi-image.sh
```
3. Launch previous Apache NiFi customized built image:
```bash
./apache-nifi/dev/launch-apache-nifi.sh
```

### Apache NiFi UI
- [http://127.0.0.1:8080/](http://127.0.0.1:8080/)


## HDFS
> Is a distributed file system designed to run on commodity hardware

![](https://i1.wp.com/hadooptutorial.info/wp-content/uploads/2014/04/HDFS-Web-UI-1.png?w=1301)

HDFS has many similarities with existing distributed file systems. However, the differences from other distributed file systems are significant. HDFS is highly fault-tolerant and is designed to be deployed on low-cost hardware. It provides high throughput access to application data and is suitable for applications that have large data sets. HDFS relaxes a few POSIX requirements to enable streaming access to file system data.

You can check the [HDFS docs](https://hadoop.apache.org/docs/r1.2.1/hdfs_design.html) 
### Setting Up
**In the *Asgard Big Data Platform* project root:**

1. Give execute permission to dev folder of Hadoop:
```bash
chmod -R +x ./hadoop/dev/
```
2. Build Hadoop customized images:
```bash
./hadoop/dev/build-all-images.sh
```
3. Launch previous Hadoop customized built images:
```bash
./hadoop/dev/launch-single-node-cluster.sh
```

### HDFS UI
- [http://127.0.0.1:9870/](http://127.0.0.1:9870/)


## Apache Hive
> Facilitates reading, writing, and managing large datasets residing in distributed storage using SQL.

![](https://media.geeksforgeeks.org/wp-content/uploads/20201106121050/createtablestudent.png)

Apache Hive is an open source data warehouse built on top of Apache Hadoop, and designed to maximize scalability, performance, extensibility, fault-tolerance, and loose-coupling with its input formats.

Apache Hive provides the following features:
- Easy access to data via SQL, enabling data warehousing tasks such as extract/transform/load (ETL), reporting, and data analysis
- Imposed structure on a variety of data formats
- Access to files stored directly in Apache HDFS or in other data storage systems such as Apache HBase
- Query execution via Apache Tez, Apache Spark, or MapReduce
- Procedural language with HPL-SQL
- Sub-second query retrieval via Hive LLAP, Apache YARN, and Apache Slider

Regarding this project, Apache Hive can be accessed through Jupyter, Hue or its container's CLI.

You can check the [Hive Getting Started Guide](https://cwiki.apache.org/confluence/display/Hive/GettingStarted), their [wiki](https://cwiki.apache.org/confluence/display/Hive/Home) where you can find all available documentation, or their [GitHub repository](https://github.com/apache/hive).

### Setting Up
**In the *Asgard Big Data Platform* project root:**

1. Give execute permission to dev folder of Hive:
```bash
chmod -R +x hive/dev/
```
2. Build Docker Images for Hive Metastore
```bash
./hive/dev/build-all-images.sh
```
3. Launch Hive Metastore Containers. This will create a Hive Thrift Server and a MySQL server
```bash
./hive/dev/launch-hive-metastore.sh
```

## Apache Zookeeper
> A Distributed Coordination Service for Distributed Applications. It is simple, ordered and fast.

### Overview
It is designed to be easy to program to, and uses a data model styled after the familiar directory tree structure of file systems. It runs in Java and has bindings for both Java and C.ZooKeeper is an open source Apache project that provides a centralized service for maintaining configuration information, naming, providing distributed synchronization, and providing group services over large clusters in distributed systems.

The goal is to make these systems easier to manage with improved, more reliable propagation of changes. 
It follows a simple client-server model where clients are nodes that make use of the service, and servers are nodes that provide the service. ZooKeeper server can handle a large number of client connections at the same time.

## Apache Kakfa
>  A Distributed Streaming Platform.

### Overview
Kafka is an open source software which provides a framework for storing, reading and analysing streaming data. It is capable of handling trillions of events a day. 
Shortly, Kafka is used for stream processing, website activity tracking, metrics collection and monitoring, log aggregation, real-time analytics, CEP, ingesting data into Spark, ingesting data into Hadoop, CQRS, replay messages, error recovery, and guaranteed distributed commit log for in-memory computing. 
It is also often used for operational monitoring data. This involves aggregating statistics from distributed applications to produce centralized feeds of operational data.

## Apache Zookeeper and Apache Kafka
Apache Kafka uses Apache ZooKeeper to store its metadata. Data such as the location of partitions and the configuration of topics are stored outside of Kafka itself, in a separate ZooKeeper cluster.

<p align="center">
      <img src="https://bitnine.net/wp-content/uploads/2016/09/20160927_2.jpg" alt="Kafka - Zookeeper"/>
</p>

### Apache Kafka Configuration

1. Create topic:
You can edit your topic configuration as appropriate. Example:
```bash
docker exec -it broker kafka-topics \
               --create \
               --bootstrap-server localhost:9092 \
               --replication-factor 1 \
               --partitions 1 \
               --topic <topic-name>
```
## Spark
> An open source processing tool, allowing sophisticated analysis.

Spark is a 100% open source tool, hosted on the vendor-independent Apache Software Foundation.
Using this tool, it is possible to create an execution environment serving as a basis for Big Data and Machine Learning, SQL data streaming and graph processing, among others.

You can check the [Spark docs](https://spark.apache.org/docs/latest/).

In this project, the set up of this technology is done together with Jupyter Notebook. 

## Jupyter Notebook
> A web-based interactive computational environment for creating Jupyter notebook documents.

![](https://raw.githubusercontent.com/mafaldaoliveira2/asgard-big-data-platform/master/resources/Jupyter.png)

A Jupyter Notebook document is a JSON document, following a versioned schema, containing an ordered list of input/output cells which can contain code, text, mathematics, plots and rich media, usually ending with the ".ipynb" extension.

A Jupyter Notebook can be converted to a number of open standard output formats, such as, HTML, LaTeX, PDF, Markdown, Python, etc. It can also be connected to many kernels to allow programming in different languages.

You can check [Project Jupyter](https://jupyter.org/) where you can find all of the available documentation, and also a large community where you can explore projects, report vulnerabilities, and participate in online communication channels.

### Setting Up
**In the *Asgard Big Data Platform* project root:**

1. Give execute permission to dev folder of Jupyter:
```bash
chmod -R +x jupyter-spark/dev/
```
2. Create and launch Jupyter Spark container:
```bash
./jupyter-spark/dev/launch-jupyter-spark.sh
```
3. Get the token to access Jupyter by doing:
```bash
docker logs jupyter
```
### Jupyter UI
- [http://127.0.0.1:8888/](http://127.0.0.1:8888/)


## Presto
> Enables analytics on large amounts of data.

![](https://d2908q01vomqb2.cloudfront.net/b6692ea5df920cad691c20319a6fffd7a4a766b8/2018/03/08/EMR_Presto8.png)

Presto is an open source distributed SQL query engine for running interactive analytic queries against data sources of all sizes ranging from gigabytes to petabytes.

Presto was designed and written from the ground up for interactive analytics and approaches the speed of commercial data warehouses while scaling to the size of organizations like Facebook.

You can check the [Presto documentation](https://prestodb.io/docs/current/) or use [Presto Slack Workspace](https://prestodb.slack.com/) for questions, suggestions and everything in between.

### Setting Up
**In the *Asgard Big Data Platform* project root:**

1. Give execute permission to dev folder of Presto:
```bash
chmod -R +x ./prestodb/dev
```
2. Build Presto customized image:
```bash
./prestodb/dev/build-presto-image.sh
```
3. Launch previous Presto customized built image:
```bash
./prestodb/dev/launch-presto.sh
```

### Presto UI
- [http://127.0.0.1:8081/](http://127.0.0.1:8081/)

## Hue
> Query. Explore. Share. Open source SQL Assistant for Databases & Data Warehouses.

![](https://cdn.gethue.com/uploads/2017/07/hue_4_assistant_2.gif)

### Write SQL like a pro
Hue brings the best Querying Experience with the most intelligent autocompletes, query sharing, result charting and download for any database.

### Connect to all the databases
Pick one of the multiple interpreters for Apache Hive, Apache Impala, Presto and all the others too: MySQL, Apache Flink SQL, Oracle, SparkSQL, Apache Phoenix, ksqlDB, Elastic Search, Apache Druid, PostgreSQL, Redshift, BigQuery...

### Find and connect your data
The tables and storage browsers leverage your existing Data Catalogs knowledge transparently. Help users find the correct data among thousands of databases and self document it.
You can check the [Hue Installation Guide](http://cloudera.github.io/hue/docs-3.5.0/manual.html), their [blog](https://gethue.com//posts/) or even their [forum](https://discourse.gethue.com/) for questions, suggestions and everything in between.

### Setting Up
**In the *Asgard Big Data Platform* project root:**

1. Give execute permission to dev folder of Hue:
```bash
chmod -R +x ./hue/dev
```
2. Launch Hue image
```bash
./hue/dev/launch-hue.sh
```

### Hue UI
- [http://127.0.0.1:8887/](http://127.0.0.1:8887/)

## Apache Superset
> Modern data exploration and visualization platform.

![](https://superset.apache.org/static/7fbdf913f3d6910fca780e9e5d0e0e7a/01620/worldbank_dashboard.png)

### Overview
Superset is fast, lightweight, intuitive, and loaded with options that make it easy for users of all skill sets to explore and visualize their data, from simple line charts to highly detailed geospatial charts.

### Powerful yet easy to use
Quickly and easily integrate and explore your data, using either our simple no-code viz builder or state of the art SQL IDE.

### Integrates with modern databases
Superset can connect to any SQL based datasource through SQLAlchemy, including modern cloud native databases and engines at petabyte scale.

### Modern architecture
Superset is lightweight and highly scalable, leveraging the power of your existing data infrastructure without requiring yet another ingestion layer.

### Rich visualizations and dashboards
Superset ships with a wide array of beautiful visualizations. Our visualization plug-in architecture makes it easy to build custom visualizations that drop directly into Superset.

You can check the [Apache Superset Documentation](https://superset.apache.org/docs/intro) and all their [community](https://superset.apache.org/community) resources, including their [Apache Superset Slack Workspace](https://join.slack.com/t/apache-superset/shared_invite/zt-l5f5e0av-fyYu8tlfdqbMdz_sPLwUqQ).

### Setting Up
**In the *Asgard Big Data Platform* project root:**

1. Give execute permission to dev folder of Apache Superset:
```bash
chmod -R +x ./apache-superset/dev
```
2. Build Docker Image for Apache Superset
```bash
./apache-superset/dev/build-apache-superset-image.sh
```
3. Launch previous built Apache Superset image
```bash
./apache-superset/dev/launch-apache-superset.sh
```

### Apache Superset UI
- [http://127.0.0.1:8087/](http://127.0.0.1:8087/)

### Apache Superset Configuration

1. Setup your local admin account:
```bash
docker exec -it superset superset fab create-admin \
               --username admin \
               --firstname Superset \
               --lastname Admin \
               --email admin@superset.com \
               --password admin
```
2. Migrate local DB to latest:
```bash
docker exec -it superset superset db upgrade
```
3. Load Examples (Optional):
```bash
docker exec -it superset superset load_examples
```
4. Setup roles:
```bash
docker exec -it superset superset init
```
4. Presto connection <bR/>
Superset requires a Python DB-API database driver and a SQLAlchemy dialect to be installed for each datastore you want to connect to. The Apache Superset iamge previously build already installed [PyHive](https://pypi.org/project/PyHive/) connector for Presto, however you can check all [databases](https://superset.apache.org/docs/databases/
) supported by Apache Superset and their [dependencies and drivers](https://superset.apache.org/docs/databases/installing-database-drivers).

<p align="center">
      <img src="https://github.com/mafaldaoliveira2/asgard-big-data-platform/blob/master/resources/presto_connection.png?raw=true" alt="Presto Connection" width="65%"/>
</p>

You can check your Presto IPAddress using the following command:
```bash
docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' presto
```
For this project, the catalog name used will be the <b>hive</b> catalog.

## Contributors
<ul>
    <li><a href="https://github.com/a84820"><strong>Diogo Rodrigues</strong></a></li>
<br />
<li><a href="https://github.com/hugodscarvalho"><strong>Hugo Carvalho</strong></a></li>
<br />
<li><a href="https://github.com/InesLopes98"><strong>Inês Lopes</strong></a></li>
<br />
<li><a href="https://github.com/mafaldaoliveira2/"><strong>Mafalda Oliveira</strong></a></li>
<br />
<li><a href=""><strong>Mariana Almeida</strong></a></li>
</ul>
