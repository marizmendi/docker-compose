#!/bin/sh

until wget -q --spider neo4j:7474 > /dev/null 2>&1
do
  wait 60
done

AWS_CONFIG_FILE=/root/.aws/config /usr/local/bin/cartography --neo4j-uri "${NEO4J_URI}"
