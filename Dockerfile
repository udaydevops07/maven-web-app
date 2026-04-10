#FROM tomcat:latest
#MAINTAINER UDAY 
#EXPOSE 8080
#COPY target/maven-web-app.war /usr/local/tomcat/webapps/maven-web-app.war

FROM tomcat:latest
MAINTAINER UDAY

EXPOSE 8080

COPY target/maven-web-app.war /usr/local/tomcat/webapps/ROOT.war
