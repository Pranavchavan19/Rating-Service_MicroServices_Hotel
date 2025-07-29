#FROM openjdk:17
#
#WORKDIR /app
#
#COPY dist/RatingService-0.0.1-SNAPSHOT.jar /app/RatingService-0.0.1-SNAPSHOT.jar
#
#EXPOSE 8083
#
#ENTRYPOINT ["java", "-jar", "RatingService-0.0.1-SNAPSHOT.jar"]




FROM maven:3.9.6-eclipse-temurin-17 AS builder
WORKDIR /app
COPY . .
RUN chmod +x mvnw && ./mvnw clean package -DskipTests

FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY --from=builder /app/target/*.jar app.jar
EXPOSE 8083
ENTRYPOINT ["java", "-jar", "app.jar"]
