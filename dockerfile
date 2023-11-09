FROM maven:3.6.3-jdk-11-slim
RUN apt update
RUN apt install git -y
RUN apt install docker.io -y
RUN apt-get -y install openssh-client
WORKDIR /home/jenkins/.ssh/
COPY id_rsa /home/jenkins/.ssh/id_rsa
RUN chmod 600 /home/jenkins/.ssh/id_rsa
RUN groupadd -g 109 jenkins && \
    useradd -u 109 -g jenkins -m -s /bin/bash jenkins
RUN chown -R jenkins:jenkins /home/jenkins