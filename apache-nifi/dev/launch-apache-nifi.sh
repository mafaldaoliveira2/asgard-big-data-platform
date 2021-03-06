# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#!/bin/bash
DOCKER_IMAGE="asgard/nifi:1.13.2"
echo "Running Docker Image: $DOCKER_IMAGE"
mkdir -p $PWD/apache-nifi/batch_data
docker run -it -d -p 8080:8080 -p 8181:8181 -v $PWD/apache-nifi/batch_data:/opt/nifi/nifi-current/batch_data --network hadoop --name nifi3 $DOCKER_IMAGE
