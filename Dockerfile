# Use an official OpenJDK image as the base
FROM openjdk:11-jre-slim

# Set the working directory
WORKDIR /app

# Copy the compiled JAR file (update `todo-app.jar` with your actual filename)
COPY target/todo-app.jar /app/todo-app.jar

# Expose the application's port (e.g., 8080)
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "todo-app.jar"]
