FROM maven:latest
RUN apt update
RUN apt install git -y
RUN apt install docker.io -y
RUN apt-get -y install openssh-client

COPY id_rsa /root/.ssh/id_rsa
RUN chmod 600 /root/.ssh/id_rsa
 