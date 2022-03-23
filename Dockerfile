FROM tomcat:9
MAINTAINER wlad1324
COPY ./target/citizen.war /usr/local/tomcat/webapps/
EXPOSE 8080
