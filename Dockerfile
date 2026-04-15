FROM eclipse-temurin:17
WORKDIR /app

COPY src/main/java/MainApp.java .

RUN javac MainApp.java

CMD ["java", "MainApp"]
