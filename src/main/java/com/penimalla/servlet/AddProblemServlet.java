package com.penimalla.servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.*;
import java.sql.*;

public class AddProblemServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String description = request.getParameter("description");
        String location = request.getParameter("location");
        String status = "Open";

        try {
            Class.forName("org.h2.Driver");
            Connection con = DriverManager.getConnection("jdbc:h2:~/localproblems", "sa", "");
            PreparedStatement ps = con.prepareStatement("INSERT INTO problems(description, location, status) VALUES (?, ?, ?)");
            ps.setString(1, description);
            ps.setString(2, location);
            ps.setString(3, status);
            ps.executeUpdate();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        response.sendRedirect("dashboard.jsp");
    }
}
