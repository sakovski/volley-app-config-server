FROM adoptopenjdk/openjdk11:ubi
RUN mkdir /opt/app
ADD ./target/volley-app-config-server-0.0.1-SNAPSHOT.jar /opt/app/volley-app-config-server-0.0.1-SNAPSHOT.jar
ADD ./ssh /root/.ssh
EXPOSE 8888
CMD ["java", "-jar", "/opt/app/volley-app-config-server-0.0.1-SNAPSHOT.jar", "-Djava.security.egd=file:/dev/./urandom"]
