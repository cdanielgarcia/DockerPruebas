#Setup maven
FROM maven:3.6.3 AS maven
ENV HOME=/usr/app
RUN mkdir -p $HOME
WORKDIR $HOME
ADD . $HOME
RUN --mount=type=cache,target=/root/.m2 mvn -f $HOME/pom.xml clean package -DskipTests
#This mount type allows the build container to cache directories for compilers and package managers.
#Reference: https://docs.docker.com/engine/reference/builder/#run

#Setup java
FROM openjdk:11-oracle
ARG JAR_FILE=person-service-0.0.1-SNAPSHOT.jar
COPY --from=maven /usr/app/target/${JAR_FILE} /app.jar
ENTRYPOINT ["java","-jar","/app.jar"]

#FROM openjdk:11-oracle
#ARG JAR_FILE=target/*.jar
#COPY ${JAR_FILE} app.jar
#ENTRYPOINT ["java","-jar","/app.jar"]