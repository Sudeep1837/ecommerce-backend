# E-Commerce Backend System

A production-grade scalable backend system for an e-commerce platform built using Java 21, Spring Boot 3, and MySQL. It demonstrates professional backend development practices including a layered architecture, security, API documentation, and clean code.

## 🚀 Features
- **User Management**: Registration, Login (JWT), Profile Update, Admin Controls.
- **Product Management**: CRUD APIs for products with filtering and pagination.
- **Cart Management**: Add, update, remove items, calculate totals.
- **Order Management**: Checkout flow, status updates, history.
- **Inventory Management**: Auto stock deduction upon successful checkout.
- **Payment Management**: Simulated payment gateway processing.

## 🏗️ Technical Stack
- **Language**: Java 21
- **Framework**: Spring Boot 3+
- **Database**: MySQL
- **ORM**: Spring Data JPA / Hibernate
- **Security**: Spring Security + JWT
- **Documentation**: Swagger UI (OpenAPI 3)
- **Mapping**: ModelMapper

## 🛠️ How to run locally

### 1. Prerequisites
- Java 21+
- Maven 3.8+
- MySQL Server (Running on port 3306)

### 2. Database Setup
1. Open your MySQL client.
2. Run the provided `schema.sql` (or just create the database).
```sql
CREATE DATABASE IF NOT EXISTS ecommerce_db;
```

### 3. Application Properties
Update the database credentials in `src/main/resources/application.properties` if your MySQL username/password is different from `root`/`root`.
```properties
spring.datasource.username=YOUR_USERNAME
spring.datasource.password=YOUR_PASSWORD
```

### 4. Build and Run
```bash
./mvnw clean install
./mvnw spring-boot:run
```

The application will start on `http://localhost:8080`.

## 📚 API Documentation
Once the application is running, you can access the Swagger UI for testing all REST APIs directly from the browser:
👉 **[Swagger UI](http://localhost:8080/swagger-ui/index.html)**

**Note**: To access secure endpoints, first register/login via `/api/users/login`, copy the JWT token, click the **Authorize** button in Swagger, and paste the token.

## 📦 Deliverables included in this project
1. Complete Source Code
2. `README.md` (Project overview, instructions)
3. `Postman_Collection.json`
4. `schema.sql` (Database queries)
5. `docker-compose.yml` (For easy containerization)
