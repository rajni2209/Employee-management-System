# Employee-management-System
# 🧑‍💼 Employee Management System

A simple web-based **Employee Management System** built using **Spring MVC**, **Spring ORM**, **Spring Core**, **JSP**, **Hibernate**, and **MySQL**.

This application allows you to **add**, **edit**, **delete**, **view**, and **search** employee records in a user-friendly interface.

---

## 📸 Screenshots

### 🧾 Employee List Page  
![Screenshot 2025-06-22 233318](https://github.com/user-attachments/assets/227327b9-08b1-414e-baac-24a135dd7f2a)

---

### ✍️ Add / Edit Employee Page  
![Screenshot 2025-06-22 233326](https://github.com/user-attachments/assets/a921036f-3f58-4326-af29-08773917b74b)


---



## ✨ Features

- ✅ View all employees
- ➕ Add new employees
- ✏️ Edit existing employee details
- ❌ Delete employees
- 🔍 Search employees by name
- 🧼 Clean and modern UI using CSS
- ✅ Form validation with placeholders
- 💾 Integrated with MySQL using Hibernate ORM

---

## 🧰 Tech Stack

| Layer           | Technology                        |
|----------------|-----------------------------------|
| Frontend        | JSP, HTML, CSS                    |
| Backend         | Spring MVC, Spring Core, Spring ORM |
| ORM             | Hibernate 6 (with Jakarta Persistence) |
| Server          | Apache Tomcat 11                  |
| Database        | MySQL                             |
| Build Tool      | Maven                             |
| Language        | Java 17+                          |

---

   ## 🚀 How to Run

1. **Open in Eclipse or IntelliJ**  
   Import the project as a **Maven project**.

2. **Create MySQL database**:
 ```sql
CREATE DATABASE employee_db;
```
3. **Update DB credentials in applicationContext.xml**
 ```
<property name="url" value="jdbc:mysql://localhost:3306/employee_db"/>
<property name="username" value="root"/>
<property name="password" value="your_password"/>

 ```
**📂 Folder Structure**
```
src/
├── com.employee.controller
│   └── EmployeeController.java
├── com.employee.dao
│   ├── EmployeeDao.java
│   └── impl/EmployeeDaoImpl.java
├── com.employee.service
│   ├── EmployeeService.java
│   └── impl/EmployeeServiceImpl.java
├── com.employee.model
│   └── Employee.java
├── resources/
│   └── applicationContext.xml
webapp/

```

## 🙋‍♂️ Author

- **Rajnikant**  
  [GitHub Profile](https://github.com/rajni2209)
