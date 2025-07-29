FROM openjdk:17
WORKDIR /app
COPY target/RatingService-0.0.1-SNAPSHOT.jar /app/RatingService-0.0.1-SNAPSHOT.jar
EXPOSE 8083
ENTRYPOINT ["java", "-jar", "RatingService-0.0.1-SNAPSHOT.jar"]
