FROM eclipse-temurin:17-jdk
WORKDIR /app
RUN apt-get update && apt-get install -y curl ffmpeg && rm -rf /var/lib/apt/lists/*
COPY Lavalink.jar .
COPY application.yml .
CMD ["java", "-jar", "Lavalink.jar"]
