FROM openjdk:17-ea-slim

WORKDIR /kh

COPY ./build/libs/app98-0.0.1-SNAPSHOT.jar /kh/app98.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/kh/app98.jar"]