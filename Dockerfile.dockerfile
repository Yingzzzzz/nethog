FROM centos:7.7.1908
ENV container docker

#install wget
RUN yum install -y wget
#download files
#RUN wget https://github.com/MGI-EU/ToolScripts/raw/main/DockerScripts/mgieu.network_monitor.v1.0/network_monitor_scripts.zip
#RUN wget https://raw.githubusercontent.com/MGI-EU/ToolScripts/main/DockerScripts/mgieu.network_monitor.v1.0/main.bash

RUN wget https://raw.githubusercontent.com/Yingzzzzz/timedone/main/main.bash

#COPY . /filess
RUN yum install nethogs
#install unzip function

#Install tools
RUN yum -y install sed.x86_64
RUN chmod +x /main.bash
#autorun script
CMD /main.bash

