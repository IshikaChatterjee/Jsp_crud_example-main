package com.mario;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class EmployeeDAO {
    private static final String URL = "jdbc:mysql://localhost:3306/employee_management";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "";

    public static List<Employee> getAllEmployees() {
        List<Employee> employees = new ArrayList<>();
        try
        {
        	Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM employee_info"); {

            while (resultSet.next()) {
                int eno = resultSet.getInt("emp_id");
                String ename = resultSet.getString("emp_name");
                int esal = resultSet.getInt("emp_salary");
                employees.add(new Employee(eno, ename, esal));
            }
             }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return employees;
    }

    public static void addEmployee(Employee employee) {
        try {
        	Class.forName("com.mysql.cj.jdbc.Driver");
        	
        	Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        
             PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO employee_info(emp_id, emp_name, emp_salary) VALUES (?, ?, ?)");
           

            preparedStatement.setInt(1, employee.getEno());
            preparedStatement.setString(2, employee.getEname());
            preparedStatement.setInt(3, employee.getEsal());

            preparedStatement.executeUpdate();
             
        } catch (Exception e) {
        	System.out.println(e);
            e.printStackTrace();
        }
    }

    public static void updateEmployee(int eno, int esal) {
        try 
        {
        	Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            Statement statement = connection.createStatement();

            int count = statement.executeUpdate("UPDATE employee_info SET emp_salary=" + esal + " WHERE emp_id=" + eno);
             
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void deleteEmployee(int eno) {
        try 
        {
        	Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM employee_info WHERE emp_id=?");

            preparedStatement.setInt(1, eno);

            int count = preparedStatement.executeUpdate();
            if (count > 0) {
                System.out.println(count + " Record deleted");
            } else {
                System.out.println("No record deleted");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
