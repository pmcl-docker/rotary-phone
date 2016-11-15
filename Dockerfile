FROM ubuntu
RUN apt-get update && apt-get install -y net-tools iputils-ping
RUN ifconfig
RUN ping -p 00cd3d2dcba74adf065085c9f8ce5500 pingb.in
