FROM openjdk:17
COPY ./src /usr/src/myapp/src
WORKDIR /usr/src/myapp/src
RUN javac App.java
CMD ["java", "App"]
