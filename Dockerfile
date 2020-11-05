FROM openjdk:8-jdk-alpine
COPY target/my-app-*.jar my-app.jar
ENTRYPOINT ["java", "-jar", "my-app.jar"]