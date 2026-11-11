# LEADER'S EATERY
## PROJECT SPECIFICATION DOCUMENT

**Project Domain:** Food Delivery System  
**Project Name:** Leader's Eatery  
**Document Type:** Software Project Specification  
**Development Environment:** Local Windows PC  
**Version:** 1.0  
**Date:** 11 November 2026

---

## 1. Introduction

Leader's Eatery is a web-based food delivery application designed to provide customers with a convenient platform for browsing food items, searching for meals, managing shopping carts and placing food orders.

The application aims to simplify the food ordering process by providing an interactive, responsive and user-friendly interface connected to a backend system and MySQL database.

The system uses Angular for the frontend, Java Spring Boot for backend development and MySQL for data storage.

## 2. Project Objectives

The main objectives are to:

- Develop a dynamic and responsive food delivery website.
- Display available food items with descriptions, prices and images.
- Allow customers to search and filter food items.
- Enable customers to register and log in.
- Allow customers to add food items to a shopping cart.
- Support quantity adjustments and order calculations.
- Allow customers to place food orders.
- Support courier delivery and collection options.
- Store customer, food and order information in a MySQL database.
- Provide communication between the frontend and backend through REST APIs.

## 3. Technologies and Development Tools

| Component | Technology |
|---|---|
| Frontend | Angular 22 |
| Programming language | Java 11 |
| Backend framework | Spring Boot 2.7.18 |
| Build tool | Apache Maven 3.9.16 |
| Database | MySQL |
| Database management | MySQL Workbench |
| ORM | Hibernate / Spring Data JPA |
| Styling | HTML and CSS |
| Development IDE | Visual Studio Code |
| Runtime environment | Node.js 24 |
| API communication | REST APIs |
| Backend server | Embedded Spring Boot server |

## 4. System Architecture

The application follows a client-server architecture.

### 4.1 Frontend

The Angular frontend provides the customer-facing interface. It handles:

- Homepage and menu display.
- Food search and category filtering.
- Shopping cart management.
- Customer registration and login.
- Order placement.

### 4.2 Backend

The Spring Boot backend handles application logic and communication with the database.

Responsibilities include:

- Processing customer registration and login requests.
- Retrieving available food items.
- Managing food categories and restaurants.
- Processing customer orders.
- Validating incoming requests.
- Communicating with MySQL through Hibernate and Spring Data JPA.

### 4.3 Database

MySQL stores the application's persistent information, including:

- Customer details.
- Food categories.
- Restaurant information.
- Food items.
- Customer orders.
- Order items.

Hibernate ORM manages database table creation and updates based on Java entity classes.

## 5. Functional Requirements

### 5.1 Customer Registration

The system must allow new customers to create accounts by providing the required personal information.

Passwords must be securely hashed using BCrypt before being stored.

### 5.2 Customer Login

Registered customers must be able to submit their login credentials and receive an appropriate response from the backend.

### 5.3 Food Menu

Customers must be able to:

- View available food items.
- View food names and descriptions.
- View food prices.
- View food images.
- Browse food categories.

### 5.4 Search and Filtering

The system must provide functionality for searching food items and filtering the menu by category.

### 5.5 Shopping Cart

Customers must be able to:

- Add food items to their cart.
- Increase or decrease quantities.
- Remove items.
- View the subtotal.

### 5.6 Order Management

Customers must be able to submit orders containing their selected food items and quantities.

The system must support the following fulfilment options:

1. Courier delivery.
2. Collection from the restaurant.

Order information must be stored in the database.

## 6. Database Specification

The database is named:

`leaders_eatery_db`

The main database entities are:

| Entity | Description |
|---|---|
| Customer | Stores customer registration and account information. |
| FoodCategory | Stores food categories. |
| Restaurant | Stores restaurant information. |
| FoodItem | Stores food item details, prices and image links. |
| CustomerOrder | Stores customer order information. |
| OrderItem | Stores the individual food items associated with each order. |

Hibernate is configured to generate and update database tables from the application's entity classes.

## 7. REST API Specification

The backend exposes REST endpoints for communication with Angular.

| API endpoint | Purpose |
|---|---|
| `/api/food-items/available` | Retrieves available food items. |
| `/api/food-items` | Retrieves food item information. |
| `/api/categories` | Retrieves food categories. |
| `/api/restaurants` | Retrieves restaurant information. |
| `/api/customers/register` | Registers a new customer. |
| `/api/customers/login` | Authenticates customer login credentials. |
| `/api/orders` | Processes customer orders. |
| `/api/orders/customer/{customerId}` | Retrieves orders associated with a customer. |

## 8. Non-Functional Requirements

### 8.1 Performance
The application should retrieve menu information efficiently and respond to customer requests within a reasonable time.

### 8.2 Usability
The interface should be intuitive and easy to navigate.

### 8.3 Responsiveness
The website should adapt to desktop, tablet and mobile screen sizes.

### 8.4 Security
Customer passwords must be hashed before database storage. Input validation and appropriate access controls should be implemented.

### 8.5 Maintainability
The application should use a structured architecture that allows individual components and services to be maintained independently.

## 9. System Requirements

### Hardware
- Computer running Windows.
- Internet connection for downloading dependencies and resources.
- Sufficient memory and storage to run MySQL, Java and Angular.

### Software
- Java Development Kit 11.
- Node.js 24.
- Angular CLI 22.
- Apache Maven 3.9.16.
- MySQL Server.
- MySQL Workbench.
- Visual Studio Code.

## 10. Application Execution

The application runs locally using two development servers.

**Backend:**

```powershell
cd leaders-eatery-backend
mvn spring-boot:run
```

Backend address:

`http://localhost:8080`

**Frontend:**

```powershell
cd leaders-eatery-frontend
npm install
ng serve
```

Frontend address:

`http://localhost:4200`

The MySQL server must be running before starting the backend.

## 11. Testing Strategy

The following tests should be performed:

| Test ID | Test description | Expected result |
|---|---|---|
| TC001 | Launch backend application | Spring Boot starts successfully. |
| TC002 | Connect to MySQL | Database connection succeeds. |
| TC003 | Retrieve available food items | API returns food item data. |
| TC004 | Register a customer | Customer is saved successfully. |
| TC005 | Verify password storage | Password is stored as a BCrypt hash. |
| TC006 | Log in a registered customer | Login request returns an appropriate response. |
| TC007 | Search for a food item | Matching food items are displayed. |
| TC008 | Filter by category | Relevant food items are displayed. |
| TC009 | Add an item to cart | Item appears in the cart. |
| TC010 | Update cart quantity | Cart totals are recalculated. |
| TC011 | Place an order | Order information is saved. |
| TC012 | Select delivery option | Courier delivery or collection is recorded. |

## 12. Expected Project Deliverables

The completed project should contain:

1. Angular frontend source code.
2. Spring Boot backend source code.
3. MySQL database configuration.
4. Java entity and repository classes.
5. REST API controllers.
6. Customer registration and login functionality.
7. Food menu and search functionality.
8. Shopping cart functionality.
9. Order management functionality.
10. Project documentation.
11. Test results and supporting screenshots.

## 13. Future Enhancements

The following features may be considered for future development:

- Online payment integration.
- Order tracking.
- Customer order history.
- Restaurant administration dashboard.
- Food item management dashboard.
- Customer profile management.
- Email and SMS order notifications.
- Role-based authentication and authorization.
- Deployment to a cloud hosting platform.

## 14. Conclusion

Leader's Eatery aims to provide a convenient and efficient food ordering platform through the integration of Angular, Java Spring Boot and MySQL.

The system combines a responsive customer interface with backend REST services and database persistence. Its modular design provides a foundation for future improvements, additional functionality and deployment.

**Project Name:** Leader's Eatery  
**End of Document**
