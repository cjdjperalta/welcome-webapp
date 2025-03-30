# Use Maven to build the project
FROM maven:3.9.4-eclipse-temurin-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean package

# Use a base image to run the WAR (Apache Tomcat)
FROM tomcat:9.0
COPY --from=build /app/target/welcome-webapp.war /usr/local/tomcat/webapps/

EXPOSE 8080
