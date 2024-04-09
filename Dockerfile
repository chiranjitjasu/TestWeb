##Build jar using maven

FROM maven:3.6.3-openjdk-17-slim AS nameasyouwish
WORKDIR /home/app
COPY . /home/app
RUN mvn -f /home/app/pom.xml clean package

##create image from the jar

FROM openjdk:17-jdk-alpine
#VOLUME /tmp
EXPOSE 8080
#ARG JAR_FILE=target/*.jar
#ADD ${JAR_FILE} app.jar
COPY --from=nameasyouwish /home/app/target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
