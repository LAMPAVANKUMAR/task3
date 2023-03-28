FROM openjdk:11-jdk-slim
COPY target/myapp.jar /usr/local/lib/myapp.jar
ENV MONGO_HOST=mongo
ENV MONGO_PORT=27017
ENTRYPOINT ["java", "-jar", "/usr/local/lib/myapp.jar"]
