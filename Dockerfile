FROM openjdk:8-jdk-alpine
VOLUME /tmp
#ARG JAR_FILE
ADD target/github-actions-demo.jar github-actions-demo.jar
EXPOSE 8080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","github-actions-demo.jar"]