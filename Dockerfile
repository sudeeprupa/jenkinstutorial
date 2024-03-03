FROM openjdk:8
ADD target/testrepo.jar testrepo.jar
ENTRYPOINT ["java","-jar","/testrepo.jar"]

