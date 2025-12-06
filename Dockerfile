# # Use Maven with OpenJDK to build the project
# FROM maven:3.9.6-eclipse-temurin-21 AS build

# WORKDIR /app

# # Copy the pom.xml first and download dependencies
# COPY pom.xml .
# RUN mvn dependency:go-offline -B

# # Copy the rest of the source code
# COPY src ./src

# # Build the jar file
# RUN mvn clean package -DskipTests

# # Use a smaller JDK image to run the app
# FROM openjdk:21-jdk-slim

# WORKDIR /app

# # Copy the jar built in the previous stage
# COPY --from=build /app/target/learning-management-system-0.0.1-SNAPSHOT.jar app.jar

# EXPOSE 8080

# CMD ["java", "-jar", "app.jar"]



# Build stage
FROM maven:3.9.6-eclipse-temurin-21 AS build
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline -B
COPY src ./src
RUN mvn clean package -DskipTests

# Run stage
FROM eclipse-temurin:21-jre
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
EXPOSE 8080
CMD ["java",
     "-Xmx192m",
     "-Xms128m",
     "-XX:MaxMetaspaceSize=96m",
     "-XX:ReservedCodeCacheSize=32m",
     "-XX:MaxDirectMemorySize=32m",
     "-XX:MaxRAMPercentage=70",
     "-jar",
     "app.jar"]

