# MediPortal 🏥💊

MediPortal is a **Java-based web application** developed using **Servlets, JSP, JDBC, and Maven**.  
The application allows users to search, view, and manage medicine and medical information through a web interface.

This project follows a **layered MVC architecture** and was built as part of hands-on learning in Java web development.

---

## 🛠 Tech Stack

- **Backend:** Java (Servlets)
- **Frontend:** JSP, HTML, CSS, JavaScript, jQuery
- **Architecture:** MVC (Controller → Service → DAO)
- **Build Tool:** Maven
- **Server:** Apache Tomcat
- **Database:** MySQL
- **Java Version:** Java 8

---

## ✨ Features

### 👤 User Management
- User registration
- User login & logout
- User dashboard

### 💊 Medicine Management
- Add medicine details
- View medicine information
- Search medicines

### 🏥 Medical Information
- Add medical records
- View medical details

### 🔐 Admin Module
- Admin login
- Manage users and medicine data

---

## 📂 Project Structure

MediPortal
├── src
│ └── main
│ ├── java
│ │ └── com.medicine.web
│ │ ├── controller
│ │ ├── service
│ │ ├── dao
│ │ └── model
│ └── webapp
│ ├── WEB-INF
│ │ └── web.xml
│ ├── css
│ ├── js
│ ├── image
│ └── *.jsp
├── pom.xml
├── .gitignore
└── README.md

---

## 🚀 How to Run the Project

### Prerequisites
- JDK 8
- Apache Tomcat (9 recommended)
- MySQL
- Maven
- IDE (IntelliJ IDEA / Eclipse)

---

### Steps

1. Clone the repository:
   ```bash
   git clone https://github.com/Regislin/MediPortal.git
2. Import the project as a Maven project in your IDE.
3. Create a MySQL database and required tables.
4. Update database credentials in:
   src/main/java/com/medicine/web/dao/DBConnection.java
5. Build the project:
   mvn clean install
6. Deploy the generated WAR file to Apache Tomcat.
7. Access the application in the browser:
   http://localhost:8080/MediPortal

---

###Key Learnings
-Developed a Java Web Application using Servlets and JSP
-Implemented MVC architecture
-Used DAO pattern for database interaction
-Worked with JDBC and MySQL
-Managed dependencies using Maven
-Understood real-world request–response flow in web applications

---

###Future Enhancements
-Convert project to Spring MVC / Spring Boot
-Implement role-based authorization
-Improve UI with modern frontend frameworks
-Add RESTful APIs

---

👨‍💻 Author

Regislin TR
GitHub: https://github.com/Regislin
Email: regislin2010@gmail.com
