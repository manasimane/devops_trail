# Use a lightweight Java runtime
FROM eclipse-temurin:17-jre-alpine

# Copy the .jar file created by Maven into the container
COPY target/my-app-1.0.jar app.jar

# Run the application
CMD ["java", "-jar", "app.jar"]
