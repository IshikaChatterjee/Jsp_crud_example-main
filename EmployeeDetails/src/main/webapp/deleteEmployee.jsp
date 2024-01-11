<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap">
    <title>Delete Employee</title>
    <style>
        body {
            font-family: 'poppins';
            margin: 20px;
            background: linear-gradient(to right, #283593, #1976D2);
            color: #fff;
            text-align: center;
        }

        h2 {
            color: #fff;
            text-transform: uppercase;
            letter-spacing: 1px;
            text-align: center;
            text-shadow: 2px 2px 4px rgba(33, 150, 243, 0.5);
        }

        form {
            max-width: 300px;
            margin: 20px auto;
            background-color: rgba(30, 136, 229, 0.8);
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }

        label {
            text-align: left;
            display: block;
            margin-bottom: 10px;
            letter-spacing: 1px;
            font-weight: bold;
            color: #fff;
            text-shadow: 1px 1px 2px #000;
        }

        input {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            box-sizing: border-box;
            border: 2px solid #64B5F6;
            border-radius: 5px;
            background-color: transparent;
            color: #fff;
        }

        input[type="submit"] {
            width: 100px;
            padding: 10px;
            margin-bottom: 15px;
            box-sizing: border-box;
            border: 1px solid #64B5F6;
            border-radius: 10px;
            background-color: #fff;
            font-size: 14px;
            color: #273997;
            text-transform: uppercase;
        }
        
        input[type="submit"]:hover {
            background: transparent;
            border: 2px solid #fff;
            color: #fff;
            text-transform: uppercase;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            color: #fff;
        }

        a:hover {
            color: #fff;
            text-shadow: 1px 1px 5px #000;
        }
    </style>
</head>
<body>
    <h2>Delete Employee</h2>

    <form action="deleteEmployeeServlet" method="post">
        <label for="eno">Employee No:</label>
        <input type="text" name="eno" id="eno"><br>
        
        <input type="submit" value="Delete">
    </form>

    <br>
    <a href="index.jsp">Back to Employee List</a>
</body>
</html>
