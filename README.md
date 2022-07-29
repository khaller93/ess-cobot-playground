# Cobot KG - GraphDB instance

This repository offers a `docker-compose` file, which provides a running GraphDB instance with the Cobot demo loaded. Hence, an up-to-date version of Docker is required (or any other equivalent container engine). The `khaller/graphdb-free` container image is used. The documentation of this image can be found [here](https://github.com/khaller93/graphdb-free).

## Running GraphDB

Starting the GraphDB instance is as easy as running the following command.

```bash
$ docker-compose up
```

The GraphDB instance can now be found at [http://localhost:7280](http://localhost:7280).

After a successful start of the container image, the data of the GraphDB instance is stored in the `db` folder. On Linux systems with SELinux enabled, the run of the container might fail, due to missing permission to read/write to this directory on the host filesystem. Then you can add a proper SELinux label to this directory with '`chcon -Rt svirt_sandbox_file_t ./db`', or disable SELinux with '`setenforce 0`'.

```
db
├── data
├── logs
├── README.md
└── work
```

Moreover, `.lock` files might be added to the `config` folder. These `.lock` files indicate that the initialization of the `pokemon` repository has been performed successfully. If you want to re-initialize the repository for some reason, you can delete these `.lock` files manually and restart the container. Alternatively, you can use the provided `clean-locks.sh` to delete these `.lock` files.

```
config
├── config.ttl
├── init.lock
├── sparql
├── sparql.lock
└── toLoad
```

## Running GraphDB with Exploratory Search Microservice

This repository also includes a docker-compose file to start the exploratory 
search microservice together with the GraphDB instance. It can be started with
the following command.

```bash
$ docker-compose -f docker-compose.esm.yml up
```

The GraphDB instance can now be found at [http://localhost:7280](http://localhost:7277)
and the microservice can be found at [http://localhost:8082](http://localhost:8081).

## Running GraphDB with complete ESS

This repository also includes a docker-compose file to start the complete exploratory search system with the GraphDB instance as storage solution. It can be started with the following command.

```bash
$ docker-compose -f docker-compose.full.yml up
```

Then, the web application is available at [http://localhost:9002](http://localhost:9001).

# Contact

* Kevin Haller - [contact@kevinhaller.dev](mailto:contact@kevinhaller.dev) or [kevin.haller@tuwien.ac.at](mailto:kevin.haller@tuwien.ac.at)