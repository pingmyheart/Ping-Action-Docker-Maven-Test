FROM amazoncorretto:17
WORKDIR /opt
COPY target/*.jar /opt/app.jar

ENTRYPOINT ["java", "-Dfile.encoding=UTF-8", "-Dspring.config.additional-location=/config/", "-jar", "/opt/app.jar"]