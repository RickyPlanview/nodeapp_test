# Use a base image with OpenJDK 11
FROM adoptopenjdk:11-jdk-hotspot

# Set the working directory
WORKDIR /app

# Copy the Maven project file
COPY pom.xml .

# Build the project dependencies
RUN mvn dependency:go-offline -B

# Copy the application source code
COPY src ./src

# Build the application
RUN mvn package -DskipTests

# Set the command to run the Spring Boot application
CMD ["java", "-jar", "target/my-app.jar"]

