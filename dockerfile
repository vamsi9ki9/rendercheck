  # Install Maven
RUN apt-get update && apt-get install -y maven
  
  # Set the working directory inside the container
WORKDIR /app
  
  # Copy the entire project to the container
COPY . .
  
  # Build the Spring Boot application using Maven (clean and package)
RUN mvn clean package -DskipTests
    
    
    # Use the official OpenJDK 17 image as the base image
FROM openjdk:17-jdk-slim
WORKDIR /app  
    # Copy the built JAR file from target to the container
COPY target/demo.requestcheck-0.0.1-SNAPSHOT.jar app.jar
  
  # Expose port 8080
EXPOSE 8080
  
#ENV SPRING_PROFILES_ACTIVE dev
  
  # Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]





