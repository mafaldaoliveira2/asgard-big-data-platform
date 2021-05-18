#!/bin/sh
# Note: run on the root of this project (big-data-os)

echo "building images..."
docker build . -f ./hadoop/hadoop-base.Dockerfile -t hadoop-base

docker build . -f ./hadoop/hdfs-nn.Dockerfile -t hdfs-nn &
p1=$!
docker build . -f ./hadoop/hdfs-dn.Dockerfile -t hdfs-dn &
p2=$!
docker build . -f ./hadoop/yarn-rm.Dockerfile -t yarn-rm &
p3=$!
docker build . -f ./hadoop/yarn-nm.Dockerfile -t yarn-nm &
p4=$!
docker build . -f ./hadoop/yarn-ts.Dockerfile -t yarn-ts &
p5=$!
docker build . -f ./big-data-os-client/big-data-os-client.Dockerfile -t big-data-os-client &
p6=$!
docker build . -f hive/hive-metastore.Dockerfile -t hive-metastore:latest &
p7=$!
DOCKER_UID=1000
if [ -n "$1" ]; then
  DOCKER_UID="$1"
fi

DOCKER_GID=1000
if [ -n "$2" ]; then
  DOCKER_GID="$2"
fi

MIRROR=https://archive.apache.org/dist
if [ -n "$3" ]; then
  MIRROR="$3"
fi

DOCKER_IMAGE="asgard/nifi:1.13.2"
NIFI_IMAGE_VERSION="$(echo $DOCKER_IMAGE | cut -d : -f 2)"
echo "Building NiFi Image: '$DOCKER_IMAGE' Version: $NIFI_IMAGE_VERSION Mirror: $MIRROR"
docker build --build-arg UID="$DOCKER_UID" --build-arg GID="$DOCKER_GID" --build-arg NIFI_VERSION="$NIFI_IMAGE_VERSION" --build-arg MIRROR="$MIRROR" -t $DOCKER_IMAGE ./apache-nifi/ &
p8=$!
docker build --build-arg PRESTO_VERSION=0.251 -t asgard/prestodb:latest ./prestodb/ &
p9=$!
docker build . -f spark/spark-hs.Dockerfile -t spark-hs:latest &
p10=$!
docker build -t asgard/superset:latest ./apache-superset &
p11=$!
wait $p1 $p2 $p3 $p4 $p5 $p6 $p7 $p8 $p9 $p10 $p11