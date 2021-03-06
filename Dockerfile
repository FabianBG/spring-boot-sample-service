FROM openjdk:8
MAINTAINER blissfish <mark.evertz@gmx.de>

# Keep consistent with build.gradle 
ENV APP_JAR_NAME spring-boot-sample-service
ENV APP_JAR_VERSION 0.0.1-SNAPSHOT

COPY target/${APP_JAR_NAME}-${APP_JAR_VERSION}.jar /app.jar

EXPOSE 80/tcp
ENTRYPOINT ["java", "-jar", "/app.jar"]