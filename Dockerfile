# Folosește o imagine JDK de bază
FROM eclipse-temurin:17-jdk

# Setează un director de lucru în container
WORKDIR /app

# Copiază JAR-ul build-uit în container
COPY target/helloservice-0.0.1-SNAPSHOT.jar app.jar

# Deschide portul pe care rulează aplicația
EXPOSE 8080

# Comandă de rulare
ENTRYPOINT ["java", "-jar", "app.jar"]
