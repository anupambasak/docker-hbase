# docker-hbase
Hbase Distributed setup using Docker


=Usage Example

To start a container with ssh support

```shell
env bash -c 'cm=cm1 ; docker run -d -h $cm --name $cm -v /Users/anupam/git/docker-hbase/host-env/dockers_rsa.pub:/root/.ssh/authorized_keys:ro \
 -v /Users/anupam/git/docker-hbase/host-env/dockers_rsa:/root/.ssh/id_rsa:ro \
 -v /Users/anupam/git/docker-hbase/host-env/dockers_rsa.pub:/root/.ssh/id_rsa.pub:ro \
 -v /Users/anupam/git/docker-hbase/host-env/bashrc:/root/.bashrc \
 alpine-jdk8'
```
