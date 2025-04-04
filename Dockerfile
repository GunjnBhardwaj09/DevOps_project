# Tomcat 9 
FROM tomcat:9.0-jdk17

COPY ABCtechnologies-1.0.war /usr/local/tomcat/webapps/

EXPOSE 8081

# Tomcat başlat
CMD ["catalina.sh", "run"]
