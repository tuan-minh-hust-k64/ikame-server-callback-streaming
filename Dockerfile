FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
WORKDIR /app
COPY src/main/resources/credentials.json credentials.json
COPY target/*.jar app.jar
ENV GOOGLE_APPLICATION_CREDENTIALS=/app/credentials.json
ENV PROJECT_ID="ikame-gem-ai-research"
ENTRYPOINT ["java","-jar","/app/app.jar"]
#docker build --build-arg JAR_FILE=target/*.jar -t genai-server:latest .