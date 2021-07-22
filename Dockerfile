FROM  ubuntu:20.04
WORKDIR /usr/app
RUN apt-get update
RUN apt upgrade -y
RUN apt install wget -y
RUN wget http://sourceforge.net/projects/geoserver/files/GeoServer/2.19.2/geoserver-2.19.2-bin.zip
RUN apt-get install zip unzip
RUN unzip geoserver-2.19.2-bin.zip
RUN apt-get install default-jre -y
COPY ./geoserver/data_dir /usr/app/data_dir
WORKDIR /usr/app/bin
RUN ls
EXPOSE 8080
CMD /usr/app/bin/startup.sh
