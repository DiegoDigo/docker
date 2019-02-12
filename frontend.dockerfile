FROM tomcat:9-jre8-alpine
LABEL Author="Diego Delmiro"
RUN rm -rf /usr/local/tomcat/webapps/* && chmod 7777 /usr/local/tomcat/bin/*
ADD target/ROOT.war /usr/local/tomcat/webapps/ROOT.war
CMD ["catalina.sh","run"]