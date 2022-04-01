FROM ubuntu:20.04
MAINTAINER iskoldt adamthemate@live.com
RUN apt update \
	&& apt -y install wget \
	&& cd ~ \
	&& wget http://soft.vpser.net/lnmp/lnmp1.8.tar.gz -cO lnmp1.8.tar.gz \
	&& tar zxf lnmp1.8.tar.gz \
	&& cd lnmp1.8 && LNMP_Auto="y" DBSelect="2" DB_Root_Password="lnmp.org" InstallInnodb="y" PHPSelect="11" SelectMalloc="1" ./install.sh lnmp
VOLUME ["/home/wwwroot"]
EXPOSE 80 443
ENTRYPOINT ["lnmp", "start"]
