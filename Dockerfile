FROM openjdk:17-jdk-slim
WORKDIR /app
COPY target/crud-clients-0.0.8-SNAPSHOT.jar app.jar
EXPOSE 8888
ENTRYPOINT ["java", "-jar", "app.jar"]
