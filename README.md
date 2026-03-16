# 🛒 E-Commerce Backend System

A scalable and production-ready **backend system for an e-commerce platform** built using **Java 21, Spring Boot 3, and MySQL**.

The system follows modern backend engineering practices including:

* **Layered Architecture**
* **RESTful API Design**
* **JWT-based Authentication**
* **Secure Role-Based Authorization**
* **Cloud Deployment**
* **Dockerized Environment**
* **Automated Test Coverage using JaCoCo**

This project demonstrates how a **real-world e-commerce backend system** can be designed, implemented, and deployed using modern backend technologies.

---

# 🌍 Live Deployment

The backend is **deployed on Render** and accessible publicly.

### 🔗 Live API Documentation

https://ecommerce-backend-2-tu2o.onrender.com/swagger-ui/index.html

Using Swagger you can:

* Explore all REST APIs
* Send requests directly from the browser
* Authenticate using JWT tokens
* Test API responses

---

# 🚀 Core Features

## 👤 User Management

Handles authentication and user administration.

Capabilities include:

* User registration
* Secure login using **JWT authentication**
* Role-based access control (**ADMIN / CUSTOMER**)
* Profile management
* Admin control over platform users

### Security Implementation

* Password encryption using **BCrypt**
* Stateless authentication using **JWT tokens**
* Endpoint protection using **Spring Security filters**
* Secure request validation

---

## 📦 Product Management

Allows administrators to manage products and customers to browse available items.

Features include:

* Add new products
* Update product details
* Delete products
* View product catalog
* Pagination support
* Filtering support

This module enables **efficient product management for scalable e-commerce systems.**

---

## 🛒 Cart Management

The cart module enables customers to manage products before checkout.

Supported operations:

* Add items to cart
* Update cart quantities
* Remove items from cart
* Automatic total calculation

Each cart is linked to the **authenticated user session**.

---

## 📑 Order Management

Handles the order lifecycle from checkout to tracking.

Features include:

* Place orders
* Track order history
* View order details
* Manage order statuses

Orders are generated from cart items and stored using **relational database mapping**.

---

## 📉 Inventory Management

Maintains accurate stock levels for all products.

When an order is placed:

* Product stock is automatically reduced
* Inventory consistency is maintained
* Overselling is prevented

---

## 💳 Payment Processing

A **simulated payment gateway** is implemented to demonstrate checkout flow.

Workflow:

1. User initiates checkout
2. Payment is processed (simulation)
3. Order is created
4. Inventory is updated

This structure allows future integration with real payment gateways like:

* Stripe
* Razorpay
* PayPal

---

# 🏗️ Technology Stack

| Layer             | Technology                  |
| ----------------- | --------------------------- |
| Language          | Java 21                     |
| Framework         | Spring Boot 3               |
| Build Tool        | Maven                       |
| Database          | MySQL                       |
| ORM               | Spring Data JPA / Hibernate |
| Security          | Spring Security + JWT       |
| API Documentation | Swagger (OpenAPI 3)         |
| Object Mapping    | ModelMapper                 |
| Testing           | JUnit                       |
| Code Coverage     | JaCoCo                      |
| Containerization  | Docker                      |
| Cloud Hosting     | Render                      |

---

# 📂 Project Architecture

The project follows a **layered architecture pattern**.

```
controller  → Handles incoming HTTP requests
service     → Contains business logic
repository  → Handles database interaction
entity      → JPA entity models
dto         → Request & response objects
security    → JWT authentication filters
config      → Spring configuration
```

### Architectural Benefits

* Clear separation of concerns
* Easy debugging and maintenance
* Improved scalability
* Clean code structure

---

# 📁 Project Structure

```
src/main/java
│
├── controller
│   └── REST API endpoints
│
├── service
│   └── Business logic layer
│
├── repository
│   └── Database access layer
│
├── entity
│   └── JPA entity models
│
├── dto
│   └── Request / response objects
│
├── security
│   └── JWT authentication filters
│
└
```
