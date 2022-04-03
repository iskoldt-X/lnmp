# lnmp.org Docker
Make your own lnmp Docker image from lnmp.org 


# How to use this image immediately

I have buildt an image for quick deployment. Use the following commands to run a Docker container:

'''
docker run
'''

This Docker image is based on:

ubuntu:20.04

MySQL 5.5 from lnmp.org v1.8

PHP 8.0 from lnmp.org v1.8

Remember to change the MySQL root's password.

Default MySQL root password:

lnmp.org

# How to build your own image

git clone https://github.com/iskoldt-X/lnmp.git
cd lnmp
vim Dockerfile

Just modify the part of lnmp installation commond

you can find help on this site:
https://lnmp.org/auto.html
