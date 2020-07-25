From tomcat:8-jre8 

# Maintainer
MAINTAINER "suhas55" 

# copy war file on to container 
COPY ./devops-1.war /usr/local/tomcat/webapps


