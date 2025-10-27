package com.penimalla.servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.*;
import java.sql.*;

public class AddProblemServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String issueTitle = request.getParameter("issueTitle");
        String category = request.getParameter("category");
        String priority = request.getParameter("priority");
        String mobile = request.getParameter("mobile");
        String area = request.getParameter("area");
        String location = request.getParameter("location");
        String description = request.getParameter("description");
        String reporter = request.getParameter("reporter");

        try {
            Class.forName("org.h2.Driver");
            Connection con = DriverManager.getConnection("jdbc:h2:~/localproblems", "sa", "");
            Statement stmt = con.createStatement();
            stmt.executeUpdate(
                "CREATE TABLE IF NOT EXISTS problems (id INT AUTO_INCREMENT PRIMARY KEY, issueTitle VARCHAR(255), category VARCHAR(100), priority VARCHAR(20), mobile VARCHAR(20), area VARCHAR(100), location VARCHAR(255), description VARCHAR(1000), reporter VARCHAR(100))"
            );
            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO problems(issueTitle, category, priority, mobile, area, location, description, reporter) VALUES (?, ?, ?, ?, ?, ?, ?, ?)"
            );
            ps.setString(1, issueTitle);
            ps.setString(2, category);
            ps.setString(3, priority);
            ps.setString(4, mobile);
            ps.setString(5, area);
            ps.setString(6, location);
            ps.setString(7, description);
            ps.setString(8, reporter);
            ps.executeUpdate();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        response.sendRedirect("dashboard");
    }
}
