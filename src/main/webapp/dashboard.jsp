<%@ page import="java.util.List,com.penimalla.servlet.Problem" %>
<%
    List<Problem> problems = (List<Problem>) request.getAttribute("problems");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Community Issues Dashboard</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/css?family=Inter:400,700&display=swap" rel="stylesheet">
    <style>
        body { margin:0; font-family:'Inter',sans-serif; background:#f5f6fa; color:#222; }
        .header { background:#2869d9; color:white; padding:30px 0 18px 0; text-align:center; }
        .header h1 { margin:0; font-size:2.2em; }
        .container { max-width:1050px; margin:30px auto; padding:0 15px; }
        .dashboardcard { background:white; border-radius:14px; box-shadow:0 2px 14px #e3e3ed; padding:30px 18px;}
        .dashboardcard h2 { font-size:1.3em; margin-bottom:24px;}
        table { border-collapse:collapse; width:100%; background:white;}
        th, td { padding:11px; text-align:left; border-bottom:1px solid #e5e6f4; }
        th { background:#f6f7fe; font-weight:700;}
        tr:hover { background:#f2f6fb;}
        .noissues { text-align:center; padding:35px; color:#999;}
        .back-link {background:#2869d9; color:white; text-decoration:none; padding:10px 24px; border-radius:6px; display:inline-block; margin:18px 0;}
        .back-link:hover {background:#184cab;}
        @media (max-width: 900px){.container{padding:8px;}}
        @media (max-width: 700px){th,td{font-size:0.9em;padding:5px;}.dashboardcard{padding:13px;}}
    </style>
</head>
<body>
    <div class="header">
        <h1>Local Problem Solver</h1>
        <span style="font-size:1.1em;">Community Issues Dashboard</span>
    </div>
    <div class="container">
        <div class="dashboardcard">
            <h2>Reported Issues</h2>
            <% if (problems != null && !problems.isEmpty()) { %>
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Issue Title</th>
                        <th>Category</th>
                        <th>Priority</th>
                        <th>Mobile</th>
                        <th>Area</th>
                        <th>Location</th>
                        <th>Description</th>
                        <th>Reporter</th>
                    </tr>
                    <% for (Problem pb : problems) { %>
                        <tr>
                            <td><%= pb.getId() %></td>
                            <td><%= pb.getIssueTitle() %></td>
                            <td><%= pb.getCategory() %></td>
                            <td><%= pb.getPriority() %></td>
                            <td><%= pb.getMobile() %></td>
                            <td><%= pb.getArea() %></td>
                            <td><%= pb.getLocation() %></td>
                            <td><%= pb.getDescription() %></td>
                            <td><%= pb.getReporter() %></td>
                        </tr>
                    <% } %>
                </table>
            <% } else { %>
                <div class="noissues">
                    📋 No issues reported yet. Be the first to report a community problem!
                </div>
            <% } %>
            <a href="index.jsp" class="back-link">← Back to Report Issue</a>
        </div>
    </div>
</body>
</html>
