FROM ubuntu
RUN apt-get update && apt-get install -y net-tools
RUN ifconfig
