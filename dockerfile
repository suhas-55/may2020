FROM centos:7

MAINTAINER suhas55

RUN mkdir /opt/tomcat

WORKDIR /opt/tomcat

RUN curl -O http://mirrors.estointernet.in/apache/tomcat/tomcat-9/v9.0.36/bin/apache-tomcat-9.0.36.tar.gz

RUN tar xvf apache-tomcat-9.0.36.tar.gz

RUN mv apache-tomcat-9.0.36/* /opt/tomcat/.

RUN yum -y install java

RUN java -version

ADD data/devops-1.war /opt/tomcat/webapps

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh","run"]



