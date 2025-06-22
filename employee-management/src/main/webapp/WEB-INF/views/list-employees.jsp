<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.employee.model.Employee" %>

<%
    List<Employee> list = (List<Employee>) request.getAttribute("list");
%>

<html>
<head>
    <title>Employee List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f9;
            padding: 20px;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        a {
            text-decoration: none;
            color: #2e86de;
            font-weight: bold;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background: #fff;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        th, td {
            padding: 10px;
            border: 1px solid #ccc;
        }

        th {
            background-color: #2e86de;
            color: white;
        }

        tr:hover {
            background-color: #f1f1f1;
        }
        .search-container {
            margin-bottom: 20px;
        }

        .search-container input[type="text"] {
            padding: 8px 12px;
            width: 250px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }

        .search-container input[type="submit"] {
            padding: 8px 16px;
            background-color: #4CAF50;
            border: none;
            color: white;
            border-radius: 6px;
            cursor: pointer;
        }

        .search-container a {
            margin-left: 10px;
            text-decoration: none;
            color: #007bff;
        }

        .search-container a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h2>All Employees</h2>
    <a href="add">➕ Add New Employee</a>
    <br><br>
    
    <div class="search-container">
        <form action="search" method="get">
            <input type="text" name="keyword" placeholder="Search by name" required />
            <input type="submit" value="Search" />
        </form>
    </div>

<br>


    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Department</th>
            <th>Email</th>
            <th>Salary</th>
            <th>Actions</th>
        </tr>

        <%
            if (list != null && !list.isEmpty()) {
                for (Employee emp : list) {
        %>
        <tr>
            <td><%= emp.getId() %></td>
            <td><%= emp.getName() %></td>
            <td><%= emp.getDepartment() %></td>
            <td><%= emp.getEmail() %></td>
            <td><%= emp.getSalary() %></td>
            <td>
                <a href="edit/<%= emp.getId() %>">✏️ Edit</a> |
                <a href="delete/<%= emp.getId() %>" onclick="return confirm('Are you sure?')">❌ Delete</a>
            </td>
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="6" style="text-align:center;">No employees found</td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>
