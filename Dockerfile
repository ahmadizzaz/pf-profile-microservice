# Use a lightweight, official Java Runtime as a base image.
# We're using Eclipse Temurin with JRE on Ubuntu 20.04 (Focal Fossa).
FROM eclipse-temurin:21-jre-focal

# Set the working directory inside the container.
WORKDIR /app

# Expose the port your Spring Boot application runs on.
EXPOSE 8080

# Copy the compiled JAR file from the 'target' directory into the container.
# Make sure to build your project with 'mvn clean package' first.
COPY target/*.jar app.jar

# Define the command to run the application when the container starts.
ENTRYPOINT ["java", "-jar", "/app.jar"]