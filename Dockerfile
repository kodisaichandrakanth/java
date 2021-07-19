#FROM ubuntu

#RUN apt-get update
#RUN apt-get install -y openjdk:8-jdk-alpine
#ARG JAR_FILE=target/*.jar
#COPY . /opt/source-code
#ENTRYPOINT HelloWorld=/opt/source-code/HelloWorld java run


#FROM openjdk:8-jdk-alpine
#ARG JAR_FILE=target/*.jar
#COPY target/HelloWorld-1.0.jar app.jar
#ENTRYPOINT ["java","-jar","/app.jar"]



FROM openjdk:8-jdk-alpine
COPY . /opt/source-code
ENTRYPOINT HelloWorld=/opt/source-code/target/HelloWorld-1.0.jar ["java","-jar","/HelloWorld.jar"]
