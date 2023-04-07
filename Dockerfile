FROM openjdk:11
EXPOSE 9090
ADD target/helloworld.jar java-example.war
ENTRYPOINT ["java","-war","/java-exaple.war"]
