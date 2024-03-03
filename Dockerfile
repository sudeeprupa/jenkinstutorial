FROM openjdk:8
ADD target/spring-devops4.jar spring-devops4.jar
ENTRYPOINT ["java","-jar","/spring-devops4.jar"]

