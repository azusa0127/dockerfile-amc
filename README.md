# Aerospike Management Console Dockerfile
Dockerfile for Aerospike Management Console

## Basic usage
```bash
$ docker run -d --name amc -p 8081:8081 azusa0127/amc
```

## To build the image manually
```bash
$ git clone https://github.com/azusa0127/dockerfile-amc.git && cd dockerfile-amc
$ docker build -t amc .
$ docker run -d --name amc -p 8081:8081 amc
```
