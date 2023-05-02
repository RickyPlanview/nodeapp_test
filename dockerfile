# Use a base image with OpenJDK 11
FROM adoptopenjdk:11-jre-hotspot

# Set the working directory in the container
WORKDIR /app

# Copy the compiled Spring Boot application JAR file
COPY target/demo.jar app.jar

# Expose port 8080
EXPOSE 8080

# Set the command to run the Spring Boot application
CMD ["java", "-jar", "app.jar"]
