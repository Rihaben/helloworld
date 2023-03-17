FROM openjdk:11
EXPOSE 9090
ADD target/helloworld.jar helloworld.jar
ENTRYPOINT ["java","-jar","/helloworld.jar"]
