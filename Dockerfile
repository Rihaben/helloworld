FROM maven as build 
Workdir /app
COPY . .
RUN mvn install

FROM openjdk:11.0
COPY --from-build /app/target/helloworld.jar /app
EXPOSE 9090
CMD [ "java",".jar","helloworld.jar" ]
