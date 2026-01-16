FROM openjdk:17-alpine
WORKDIR /app
RUN apk add --no-cache curl ffmpeg
COPY Lavalink.jar .
COPY application.yml .
CMD ["java", "-jar", "Lavalink.jar"]