FROM openjdk:8
ADD target/spring-devops4.jar spring-devops4.jar
ENTRYPOINT ["java","-jar","/spring-devops4.jar"]
FROM jenkins:1.651.1
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt
USER root 
RUN apt-get update 
RUN groupadd docker && gpasswd -a jenkins docker 
USER jenkins
