FROM ubuntu:20.04
MAINTAINER iskoldt
WORKDIR /root/lnmp1.8
COPY lnmp1.8 .
RUN apt update \
	&& apt -y install wget \
	&&  LNMP_Auto="y" DBSelect="2" DB_Root_Password="lnmp.org" InstallInnodb="y" PHPSelect="11" SelectMalloc="1" ./install.sh lnmp
VOLUME ["/home/wwwroot"]
EXPOSE 80 443
CMD lnmp start ; sleep infinity
