FROM openjdk:12-jdk-alpine
ARG JAR_FILE=*.jar
WORKDIR /home
RUN mkdir demo-app
WORKDIR demo-app
COPY  ${JAR_FILE}  ./java-socket-app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/home/demo-app/java-socket-app.jar"]