FROM openjdk:8-alpine
add target/*.jar backend.jar
ENTRYPOINT ["java","-jar","backend.jar"]