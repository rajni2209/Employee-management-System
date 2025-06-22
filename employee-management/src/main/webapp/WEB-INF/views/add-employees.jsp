<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.employee.model.Employee" %>

<%
    Employee employee = (Employee) request.getAttribute("employee");
    if (employee == null) {
        employee = new Employee(); // Fallback
    }
    boolean isEdit = employee.getId() != 0;
%>

<html>
<head>
    <title><%= isEdit ? "Edit" : "Add" %> Employee</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f9;
            padding: 30px;
        }

        h2 {
            text-align: center;
        }

        form {
            width: 400px;
            margin: auto;
            padding: 20px;
            background-color: white;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
            border-radius: 8px;
        }

        label {
            display: block;
            margin-top: 10px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="email"],
        input[type="number"] {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            margin-top: 20px;
            width: 100%;
            padding: 10px;
            background-color: #2e86de;
            color: white;
            border: none;
            font-weight: bold;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #1b5faa;
        }

        .cancel {
            display: block;
            text-align: center;
            margin-top: 10px;
            color: #888;
            text-decoration: none;
        }

        .cancel:hover {
            color: #000;
        }
    </style>
</head>
<body>
    <h2><%= isEdit ? "Edit" : "Add" %> Employee</h2>

    <form action="/employee-management/save" method="post">
        <input type="hidden" name="id" value="<%= employee.getId() %>" />

        <label>Name:</label>
        <input type="text" name="name" value="<%= employee.getName() %>" required />

        <label>Department:</label>
        <input type="text" name="department" value="<%= employee.getDepartment() %>" required />

        <label>Email:</label>
        <input type="email" name="email" value="<%= employee.getEmail() %>" required />

        <label>Salary:</label>
        <input type="number" step="0.01" name="salary" value="<%= employee.getSalary() %>" required />

        <input type="submit" value="Save" />
        <a class="cancel" href="cancel">Cancel</a>
    </form>
</body>
</html>
