# Use OpenJDK 21 as base image
FROM openjdk:21

# Install Gradle
RUN apt-get update && apt-get install -y gradle && apt-get clean

# Set working directory
WORKDIR /app

# Copy the application code
COPY . /app

# Build the application
RUN gradle build

# Command to run the application
CMD ["java", "-jar", "build/libs/your-application.jar"]
