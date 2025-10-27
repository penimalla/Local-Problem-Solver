<%@ page import="java.util.List,com.penimalla.servlet.Problem" %>
<%
    List<Problem> problems = (List<Problem>) request.getAttribute("problems");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Reported Problems Dashboard</title>
</head>
<body>
    <h1>Dashboard: Reported Problems</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Description</th>
            <th>Location</th>
            <th>Status</th>
        </tr>
        <% if (problems != null) {
            for (Problem pb : problems) { %>
            <tr>
                <td><%= pb.getId() %></td>
                <td><%= pb.getDescription() %></td>
                <td><%= pb.getLocation() %></td>
                <td><%= pb.getStatus() %></td>
            </tr>
        <% }} %>
    </table>
    <br>
    <a href="index.jsp">Back to Home</a>
</body>
</html>
