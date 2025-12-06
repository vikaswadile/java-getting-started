# Use the official Eclipse Temurin JDK 17 image
FROM eclipse-temurin:17-jdk-alpine

# Set working directory
WORKDIR /app

# Copy the jar file from the target directory
COPY target/*.jar app.jar

# Expose port (optional)
EXPOSE 8085

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
