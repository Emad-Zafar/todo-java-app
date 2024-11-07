# Use an official OpenJDK 21 image as the base
FROM openjdk:21

# Install Xvfb to simulate a display for GUI applications
RUN apt-get update && \
    apt-get install -y xvfb && \
    apt-get clean

# Set the working directory in the container
WORKDIR /app

# Copy the application source code into the container
COPY . /app

# Compile the Java application
RUN javac ToDoList.java

# Start Xvfb in the background and run the application
CMD ["sh", "-c", "Xvfb :99 -screen 0 1024x768x16 & java -Djava.awt.headless=false ToDoList"]
