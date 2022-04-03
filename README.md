# lnmp Docker
[![GitHub Stars](https://img.shields.io/github/stars/iskoldt-X/lnmp.svg?style=flat-square&label=Stars&logo=github)](https://github.com/iskoldt-X/lnmp/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/iskoldt-X/lnmp.svg?style=flat-square&label=Forks&logo=github)](https://github.com/iskoldt-X/lnmp/fork)
[![Docker Stars](https://img.shields.io/docker/stars/iskoldt/lnmp.svg?style=flat-square&label=Stars&logo=docker)](https://hub.docker.com/r/iskoldt/lnmp)
[![Docker Pulls](https://img.shields.io/docker/pulls/iskoldt/lnmp.svg?style=flat-square&label=Pulls&logo=docker&color=orange)](https://hub.docker.com/r/iskoldt/lnmp)


Make your own lnmp Docker image from lnmp.org. 


# How to use this image immediately

I have buildt an image for quick deployment. Use the following commands to run a Docker container:

```
docker run -d \
  --name lnmp \
  --restart unless-stopped \
  -p 80:80 \
  -p 443:443 \
  iskoldt/lnmp:1.8
```

This Docker image is based on:

`ubuntu:20.04`

`MySQL 5.5`

`PHP 8.0`

Remember to change the MySQL root's password.

Default MySQL root password:

`lnmp.org`

# How to build your own image

```
git clone https://github.com/iskoldt-X/lnmp.git
cd lnmp
vim Dockerfile
```
Just modify the part of lnmp installation commond

```
docker build -t lnmp:TAG .
```

you can find help on this site:
https://lnmp.org/auto.html
