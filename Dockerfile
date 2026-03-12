FROM eclipse-temurin:21-jdk

WORKDIR /app

COPY .mvn/ .mvn/
COPY mvnw pom.xml ./

RUN chmod +x mvnw
RUN ./mvnw -q -DskipTests dependency:go-offline

COPY src ./src

RUN ./mvnw -q -DskipTests package

EXPOSE 8080

CMD ["java","-jar","target/*.jar"]