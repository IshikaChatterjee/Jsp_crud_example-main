<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, com.mario.Employee"%>
<%@ page import="java.util.List"%>
<%@ page import="com.mario.EmployeeDAO"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap">
    <title>Employee Management System</title>
    <style>
        body {
            font-family: 'poppins';
            margin: 20px;
            background: linear-gradient(to right, #283593, #1976D2);
            color: #fff;
        }

        h2 {
            color: #fff;
            text-transform: uppercase;
            letter-spacing: 1px;
            text-align: center;
            text-shadow: 2px 2px 4px rgba(33, 150, 243, 0.5);
        }
        
        div.container {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        table {
            width: 500px;
            border-radius: 10px;
            border: 2px solid #fff;
            margin-top: 10px;
        }

        th, td {
            border-radius: 10px;
            padding: 12px;
            text-align: left;
            border: 5px solid #fff;
            color: #fff;
        }

        th {
            background-color: #2196F3;
            text-align: center;
        }
        
        div.link {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        a {
            background-color: #fff;
            text-align: center;
            font-size: 14px;
            color: #273997;
            width: 130px;
            text-transform: uppercase;
            cursor: pointer;
            border: 2px solid #020B25;
            border-radius: 10px;
            padding: 10px;
            transition: background-color 0.3s;
            text-decoration: none;
        }

        a:hover {
            background: transparent;
            border: 2px solid #fff;
            color: #fff;
            text-transform: uppercase;
        }
    </style>
</head>
<body>
    <h2>Employee Records</h2>
    <div class="container">
    <table border="1">
        <tr>
            <th>Employee ID</th>
            <th>Employee Name</th>
            <th>Employee Salary</th>
        </tr>

        <% List<Employee> employees = EmployeeDAO.getAllEmployees();
           for (Employee employee : employees) { %>
            <tr>
                <td><%= employee.getEno() %></td>
                <td><%= employee.getEname() %></td>
                <td><%= employee.getEsal() %></td>
            </tr>
        <% } %>
    </table>
    </div>

    <br>
    <div class="link">
    <a href="addEmployee.jsp">Add Employee</a>&nbsp;&nbsp;
    <a href="updateEmployee.jsp">Update Employee</a>&nbsp;&nbsp;
    <a href="deleteEmployee.jsp">Delete Employee</a>&nbsp;&nbsp;
    </div>
</body>
</html>
