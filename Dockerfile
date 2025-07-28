FROM openjdk:17

WORKDIR /app

COPY dist/RatingService-0.0.1-SNAPSHOT.jar /app/RatingService-0.0.1-SNAPSHOT.jar

EXPOSE 8083

ENTRYPOINT ["java", "-jar", "RatingService-0.0.1-SNAPSHOT.jar"]
