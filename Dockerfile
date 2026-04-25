FROM amazoncorretto:21

WORKDIR /app

COPY target/customer-service-app-1.0.0.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
