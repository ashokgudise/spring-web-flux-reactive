FROM openjdk:16-alpine
VOLUME /tmp
COPY build/libs/gridcruddemo-0.0.1-SNAPSHOT.jar grid-crud-demo.jar
ENTRYPOINT ["java","-jar","/grid-crud-demo.jar"]
#docker build -t demos/grid-crud-demo:1.0 .
