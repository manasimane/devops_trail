# Use a lightweight Java runtime
FROM openjdk:11-jre-slim

# Copy the .jar file created by Maven into the container
COPY target/my-app-1.0.jar app.jar

# Run the application
CMD ["java", "-jar", "app.jar"]
