FROM openjdk:11.0.1-jre-slim-stretch
EXPOSE 8080
RUN apt-get update -y --allow-unauthenticated
RUN apt-get upgrade -y --allow-unauthenticated
ARG JAR=spring-petclinic-2.7.0-SNAPSHOT.jar
COPY target/$JAR /app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
