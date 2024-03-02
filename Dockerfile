FROM openjdk:8
ADD target/spring-devops2.jar spring-devops2.jar
ENTRYPOINT ["java","-jar","/spring-devops2.jar"]
