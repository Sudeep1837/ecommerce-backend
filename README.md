# 🛒 E-Commerce Backend System

A **production-grade scalable backend system** for an e-commerce platform built using **Java 21, Spring Boot 3, and MySQL**.

This project demonstrates **professional backend development practices** including:

- Layered Architecture
- Secure Authentication using JWT
- RESTful API Design
- API Documentation using Swagger
- Containerized Deployment with Docker
- Cloud Database Integration (Aiven MySQL)

---

# 🚀 Features

### 👤 User Management
- User Registration
- Secure Login using **JWT Authentication**
- Profile update functionality
- Role-based access (**ADMIN / CUSTOMER**)
- Admin can manage users

### 📦 Product Management
- Create, update, and delete products (Admin)
- Product listing with filtering
- Pagination support

### 🛒 Cart Management
- Add items to cart
- Update item quantity
- Remove items from cart
- Automatic cart total calculation

### 📑 Order Management
- Checkout workflow
- Order history tracking
- Order status updates

### 📉 Inventory Management
- Automatic stock deduction after successful checkout

### 💳 Payment Management
- Simulated payment gateway processing

---

# 🏗️ Technical Stack

| Layer | Technology |
|------|-------------|
| Language | Java 21 |
| Framework | Spring Boot 3+ |
| Database | MySQL |
| ORM | Spring Data JPA / Hibernate |
| Security | Spring Security + JWT |
| Documentation | Swagger UI (OpenAPI 3) |
| Mapping | ModelMapper |
| Deployment | Docker + Render |
| Cloud Database | Aiven MySQL |

---

# 🧱 Project Architecture

```
controller  → REST API endpoints
service     → Business logic layer
repository  → Data access layer
entity      → Database models
dto         → Request / Response models
config      → Security & application configuration
```

This **layered architecture ensures scalability, maintainability, and separation of concerns.**

---

# 🌐 Live API Documentation

The application is deployed on **Render**.

You can access the **Swagger UI** here:

👉 **https://ecommerce-backend-2-tu2o.onrender.com/swagger-ui/index.html**

Swagger allows you to:

- Explore all available APIs
- Test endpoints directly from the browser
- Authenticate using JWT tokens

---

# 🔐 Authentication (Using Swagger)

1. Register or login using the endpoint:

```
POST /api/users/login
```

2. Copy the returned **JWT token**

3. Click the **Authorize** button in Swagger

4. Paste the token like this:

```
Bearer <your_token>
```

---

# 🛠️ Running Locally (Optional)

### 1️⃣ Prerequisites

Make sure the following are installed:

- Java 21+
- Maven 3.8+
- MySQL Server

---

### 2️⃣ Database Setup

Create the database:

```sql
CREATE DATABASE IF NOT EXISTS ecommerce_db;
```

Then run the provided:

```
schema.sql
```

---

### 3️⃣ Update Database Credentials

Update `application.properties` if your MySQL credentials differ.

```
spring.datasource.username=YOUR_USERNAME
spring.datasource.password=YOUR_PASSWORD
```

---

### 4️⃣ Build and Run

```
./mvnw clean install
./mvnw spring-boot:run
```

The application will start on:

```
http://localhost:8080
```

---

# 🐳 Running with Docker

### Prerequisites

- Docker Desktop
- Docker Compose

---

### Configure Aiven MySQL

Create a `.env` file in the project root.

Example:

```
SPRING_DATASOURCE_URL=jdbc:mysql://<AIVEN_HOST>:<PORT>/<DB_NAME>?ssl-mode=REQUIRED
SPRING_DATASOURCE_USERNAME=<AIVEN_USER>
SPRING_DATASOURCE_PASSWORD=<AIVEN_PASSWORD>
```

---

### Start the Application

```
docker compose up --build
```

This will start the backend container connected to **Aiven MySQL**.

---

### Stop the Application

```
docker compose down
```

To fully reset containers and volumes:

```
docker compose down -v
```

---

# 📦 Project Deliverables

This repository contains:

- Complete **Spring Boot Backend Source Code**
- `README.md` – Project documentation
- `Postman_Collection.json` – API testing collection
- `schema.sql` – Database schema
- `docker-compose.yml` – Containerized deployment

---

# 🎯 Key Learning Outcomes

This project demonstrates:

- Production-ready **Spring Boot backend architecture**
- **JWT authentication and role-based security**
- **Cloud database integration (Aiven MySQL)**
- **Dockerized backend deployment**
- REST API documentation using **Swagger**

---

# 👨‍💻 Author

**Sudeep Kumar Dehury**  
B.Tech Computer Science Engineering
