FROM maven:17
RUN mvn clean package -DskipTests

FROM openjdk:17 
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]