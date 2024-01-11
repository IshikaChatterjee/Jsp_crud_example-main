package com.mario;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/AddEmployeeServlet")
public class AddEmployeeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int eno = Integer.parseInt(request.getParameter("eno"));
        String ename = request.getParameter("ename");
        int esal = Integer.parseInt(request.getParameter("esal"));

        EmployeeDAO.addEmployee(new Employee(eno, ename, esal));

        response.sendRedirect("index.jsp");
    }
}
