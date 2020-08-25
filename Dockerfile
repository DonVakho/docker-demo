FROM openjdk:12-jdk-alpine

ARG JAR_FILE=build/libs/*.jar
ARG JAR_LIB_FILE=target/lib/

EXPOSE 8080

RUN mkdir /app

COPY  ${JAR_FILE}  /app/java-socket-app.jar

ENTRYPOINT ["java", "-jar", "/app/java-socket-app.jar"]