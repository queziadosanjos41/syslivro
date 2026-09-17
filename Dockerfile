FROM tomcat:10.1

COPY target/SysLivro-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/SysLivro.war

EXPOSE 8080

CMD ["catalina.sh", "run"]