# 🛒 E-Commerce Backend System

A **production-grade scalable REST API backend** for an e-commerce platform built using **Java 21, Spring Boot 3, and MySQL**.

The system is designed using **industry-standard backend architecture**, secure authentication, and cloud deployment.

It exposes REST APIs that can be consumed by **web, mobile, or frontend applications**.

---

# 🌐 Live API Documentation

The backend is deployed on **Render**.

👉 Swagger UI  
https://ecommerce-backend-2-tu2o.onrender.com/swagger-ui/index.html

Swagger allows you to:

- Explore all APIs
- Test endpoints directly
- Authenticate using JWT tokens

---

# 🚀 Core Features

## 👤 User Management
- User Registration
- Login using **JWT Authentication**
- Profile update
- Role based access (**ADMIN / CUSTOMER**)
- Admin can manage users

---

## 📦 Product Management
- Admin can **add, update, delete products**
- Public product browsing
- Pagination support
- Category filtering

---

## 🛒 Cart Management
- Add products to cart
- Update quantity
- Remove items
- Automatic cart total calculation

---

## 📑 Order Management
- Checkout converts cart to order
- Order history tracking
- Order status updates

---

## 📉 Inventory Management
- Automatic stock deduction on successful checkout
- Prevents ordering out-of-stock products

---

## 💳 Payment Simulation
- Simulated payment gateway
- Order status updated after payment

---

# 🏗️ Tech Stack

| Layer | Technology |
|------|-------------|
| Language | Java 21 |
| Framework | Spring Boot 3 |
| Security | Spring Security + JWT |
| Database | MySQL |
| ORM | Spring Data JPA / Hibernate |
| API Documentation | Swagger (OpenAPI 3) |
| Object Mapping | ModelMapper |
| Testing | JUnit + Mockito |
| Containerization | Docker |
| Deployment | Render |
| Cloud Database | Aiven MySQL |

---

# 🧱 Project Architecture

```
controller  → REST API endpoints
service     → Business logic
repository  → Database access layer
entity      → Database models
dto         → Request/response models
config      → Security & application configuration
exception   → Global exception handling
```

This layered architecture ensures:

- Separation of concerns
- Maintainable codebase
- Scalability for production systems

---

# 🗄 Database Schema

Below is the relational schema used in this project.

![Database Schema](docs/images/er-diagram.png)

### Key Relationships

```
users      ──< orders
users      ──  carts
carts      ──< cart_items
products   ──< cart_items
orders     ──< order_items
products   ──< order_items
```

---

# 🧪 Test Coverage (JaCoCo)

Unit tests were implemented for **service and controller layers**.

Coverage report generated using **JaCoCo**.

![JaCoCo Coverage](docs/images/jacoco-report.png)

Coverage Highlights:

- **Instruction Coverage:** ~86%
- **Branch Coverage:** ~61%
- **Controller Layer:** ~90%
- **Service Layer:** ~85%

---

# 🔐 Authentication Flow

1. Login using:

```
POST /api/users/login
```

2. Copy returned JWT token

3. Click **Authorize 🔒** in Swagger

4. Paste token:

```
Bearer <your_token>
```

---

# 🐳 Running with Docker

### Prerequisites

- Docker Desktop
- Docker Compose

---

### Configure Environment Variables

Create a `.env` file in the project root:

```
SPRING_DATASOURCE_URL=jdbc:mysql://<HOST>:<PORT>/<DATABASE>?sslMode=REQUIRED
SPRING_DATASOURCE_USERNAME=<USERNAME>
SPRING_DATASOURCE_PASSWORD=<PASSWORD>
```

---

### Start the Application

```
docker compose up --build
```

---

### Stop Containers

```
docker compose down
```

To reset volumes:

```
docker compose down -v
```

---

# 🛠 Running Locally (Optional)

### Prerequisites

- Java 21
- Maven 3.8+
- MySQL

---

### Create Database

```sql
CREATE DATABASE ecommerce_db;
```

---

### Configure application.properties

```
spring.datasource.url=jdbc:mysql://localhost:3306/ecommerce_db
spring.datasource.username=<username>
spring.datasource.password=<password>
```

---

### Run Application

```
./mvnw clean install
./mvnw spring-boot:run
```

Application starts at

```
http://localhost:8080
```

---

# 📦 Project Deliverables

This repository contains:

- Spring Boot backend source code
- Docker configuration
- Postman API collection
- Database schema
- API documentation via Swagger

---

# 🎯 Key Backend Concepts Demonstrated

- JWT Authentication
- Role-based authorization
- Layered architecture
- RESTful API design
- Dockerized deployment
- Cloud database integration
- API documentation with Swagger
- Unit testing with JaCoCo coverage

---

# 👨‍💻 Author

**Sudeep Kumar Dehury**  
B.Tech Computer Science Engineering
