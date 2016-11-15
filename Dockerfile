FROM ubuntu
RUN apt-get update && apt-get install -y openssh-server
COPY tunneler_key knownhosts ./
RUN chmod 600 tunneler_key
RUN mkdir ~/.ssh
COPY internal_key.pub ~/.ssh/authorized_keys
RUN ssh tunneler@104.236.52.106 -p 12345 -i tunneler_key -o "UserKnownHostsFile knownhosts" -N -v -R62222:localhost:22
