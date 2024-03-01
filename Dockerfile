FROM openjdk:21
EXPOSE 8081
ADD order-service.jar order-service.jar 
ENTRYPOINT ["java","-jar","/order-service.jar"]
