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
    <a href="https://github.com/mafaldaoliveira2/asgard-big-data-platform/demo">View Demo</a> -
    <a href="https://github.com/mafaldaoliveira2/asgard-big-data-platform/issues">Report Bug</a> - 
    <a href="https://github.com/mafaldaoliveira2/asgard-big-data-platform/issues">Request Feature</a>
  </p>
</p>

## Title
MLOps Scale Machine Learning in the Enterprise

## Proponent
<a href="http://www3.dsi.uminho.pt/pcortez/Home.html"><strong>Professor Paulo Cortez – DSI </strong></a>
<br />
<a href="https://pt.linkedin.com/in/apilastri"><strong>André Pilastri - CCG </strong></a>

## Client entity
<a href="https://www.ccg.pt/"><strong>Centro de Computação Gráfica - CCG </strong></a>

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

```bash
# Give execute permission to dev folder of Apache NiFi
chmod -R +x ./apache-nifi/dev
# Build Apache NiFi customized image
./apache-nifi/dev/build-apache-nifi-image.sh
# Launch previous Apache NiFi customized built image 
./apache-nifi/dev/launch-apache-nifi.sh
```

### Apache NiFi UI
- [http://127.0.0.1:8080/](http://127.0.0.1:8080/)

## Presto
> Enables analytics on large amounts of data.

![](https://d2908q01vomqb2.cloudfront.net/b6692ea5df920cad691c20319a6fffd7a4a766b8/2018/03/08/EMR_Presto8.png)

Presto is an open source distributed SQL query engine for running interactive analytic queries against data sources of all sizes ranging from gigabytes to petabytes.

Presto was designed and written from the ground up for interactive analytics and approaches the speed of commercial data warehouses while scaling to the size of organizations like Facebook.

You can check the [Presto documentation](https://prestodb.io/docs/current/) or use [Presto Slack Workspace](https://prestodb.slack.com/) for questions, suggestions and everything in between.

### Setting Up
**In the *Asgard Big Data Platform* project root:**

```bash
# Give execute permission to dev folder of Presto
chmod -R +x ./prestodb/dev
# Build Presto customized image
./prestodb/dev/build-presto-image.sh
# Launch previous Presto customized built image 
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

```bash
# Give execute permission to dev folder of Hue
chmod -R +x ./hue/dev
# Launch Hue image
./hue/dev/launch-hue.sh
```
### Hue UI
- [http://127.0.0.1:8887/](http://127.0.0.1:8887/)

## Contributors
<ul>
    <li><a href=""><strong>Diogo Rodrigues</strong></a></li>
<br />
<li><a href="https://github.com/hugodscarvalho"><strong>Hugo Carvalho</strong></a></li>
<br />
<li><a href=""><strong>Inês Lopes</strong></a></li>
<br />
<li><a href="https://github.com/mafaldaoliveira2/"><strong>Mafalda Oliveira</strong></a></li>
<br />
<li><a href=""><strong>Mariana Almeida</strong></a></li>
</ul>
