FROM openjdk:17

# Copy the whole project
COPY ./src /usr/src/myapp/src

# Set working directory to where the package root is
WORKDIR /usr/src/myapp

# Compile Java code using full path
RUN javac src/main/java/org/example/App.java

# Run with fully qualified class name (package name)
CMD ["java", "-cp", "src/main/java", "org.example.App"]
