package com.penimalla.servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.*;
import java.sql.*;
import java.util.*;

public class DashboardServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Problem> problems = new ArrayList<>();
        try {
            Class.forName("org.h2.Driver");
            Connection con = DriverManager.getConnection("jdbc:h2:~/localproblems", "sa", "");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM problems");
            while (rs.next()) {
                problems.add(new Problem(rs.getInt("id"), rs.getString("description"), rs.getString("location"), rs.getString("status")));
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        request.setAttribute("problems", problems);
        RequestDispatcher rd = request.getRequestDispatcher("dashboard.jsp");
        rd.forward(request, response);
    }
}
