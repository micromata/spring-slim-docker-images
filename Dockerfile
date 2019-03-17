FROM openjdk:8-jdk-alpine
VOLUME /tmp

# --- Library-separated approach ----------------------------------------------
ARG DEPENDENCY=target/dependency
COPY ${DEPENDENCY}/BOOT-INF/lib /app/lib
COPY ${DEPENDENCY}/META-INF /app/META-INF
COPY ${DEPENDENCY}/BOOT-INF/classes /app
ENTRYPOINT ["java","-cp","app:app/lib/*","com.mlesniak.demo.DemoApplication"]

# --- Classic approach ----------------------------------------------
# ADD target/demo-0.0.1-SNAPSHOT.jar /app/demo-0.0.1-SNAPSHOT.jar
# WORKDIR /app
# ENTRYPOINT ["java","-jar","demo-0.0.1-SNAPSHOT.jar"]