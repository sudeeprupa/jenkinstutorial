FROM openjdk:8
ADD target/spring-devops.war spring-devops.war
ENTRYPOINT ["java","-war","/spring-devops.war"]
