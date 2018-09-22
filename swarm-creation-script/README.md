# Creating a Swarm
This script create a Docker-Swarm for you, the Nodes are *Docker-Machines*.

## Invokation
Without Arguments:
```Shell
$ ./create-docker-swarm.sh
```
You will get a *Swarm* with one **Manager** and three **Workers**.


With Arguments:
```Shell
$ ./create-docker-swarm.sh ${amountWorker}
```

The Script will remove all *Docker-Machines* on your system so be careful!


