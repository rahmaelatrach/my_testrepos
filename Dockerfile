# Use a base image that already has Java and Maven installed
FROM maven:3.9.0-eclipse-temurin-17

# Set the working directory inside the container
WORKDIR /app

# Copy everything from your project folder to the container
COPY . .

# Build your Java project using Maven (skip tests for faster build)
RUN mvn -B -DskipTests=true clean package

# Run your app when the container starts
CMD ["java", "-jar", "target/demo-1.0-SNAPSHOT.jar"]
