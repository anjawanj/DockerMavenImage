# Alpine Linux with OpenJDK JRE
FROM openjdk:8-jre-alpine
# copy JAR into image
COPY ./docker/DockerMavenImage-0.0.1-SNAPSHOT.jar /app.jar 
# run application with this command line .
CMD ["/usr/bin/java", "-jar", "-Dspring.profiles.active=default", "/app.jar"]
