#!/bin/bash

echo "-----> Löse alten Schwarm auf. <-----"
docker-machine rm -f $(docker-machine ls -q)


echo "-----> Erzeuge Schwarm-Manager. <-----"
docker-machine create -d virtualbox manager
managerip=$(docker-machine ip manager)
docker-machine ssh manager "docker swarm init --advertise-addr $managerip"


jointoken=$(docker-machine ssh manager "docker swarm join-token worker -q")
echo "-----> Ip des managers: $managerip <-----"
echo "-----> Join-Token des Schwarms: $jointoken <-----"

N=${1:-3}
i=0

while [ $i -lt $N ]
do
	i=$(( $i+1 ))

	echo "-----> Erzeuge den $i. Worker <-----"
	docker-machine create -d virtualbox worker$i
	
	echo "-----> Woker$i tritt dem Schwarm bei <-----"
	docker-machine ssh worker$i "docker swarm join --token $jointoken $managerip"
done

docker-machine ls
