FROM maven:3.9.8-eclipse-temurin-17

WORKDIR /app

COPY pom.xml .
COPY src ./src

RUN mvn clean package

CMD ["java", "-jar", "target/jenkins-docker-demo-1.0-SNAPSHOT.jar"]
