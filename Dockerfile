# Tomcat 9 
FROM tomcat:9.0-jdk17

COPY /var/lib/jenkins/workspace/Test_ABC_CI/target/ABCtechnologies-1.0.war /usr/local/tomcat/webapps/ABCtechnologies.war

EXPOSE 8080

# Tomcat başlat
CMD ["catalina.sh", "run"]
