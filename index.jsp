<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Username Form</title>
</head>
<body>
    <h1>Enter your username:(be happy dont worry!!)</h1>
    <form action="<%= request.getContextPath() %>/index.jsp" method="post">
        <input type="text" name="username" placeholder="Enter your username" required>
        <br><br>
        <input type="submit" value="Submit">
    </form>
    
    <%-- Print username if it exists --%>
    <% String username = request.getParameter("username"); %>
    <% if (username != null && !username.isEmpty()) { %>
        <h1>Entered username:</h1>
        <p><%= username %></p>
    <% } %>
</body>
</html>
