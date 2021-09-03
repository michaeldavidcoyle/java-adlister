<%--
  Created by IntelliJ IDEA.
  User: MichaelCoyle
  Date: 9/2/21
  Time: 11:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    if (request.getMethod().equals("POST")) {
        if (username.equals("admin") && password.equals("password")) {
            response.sendRedirect("/profile.jsp");
        } else {
            response.sendRedirect("/login.jsp");
        }
    }
%>
<form action="/login.jsp" method="POST">
    <label for="username">Username</label>
    <input type="text" name="username" id="username" placeholder="Enter username">
    <label for="password">Password</label>
    <input type="password" name="password" id="password" placeholder="Enter password">
    <button type="submit">Submit</button>
</form>
</body>
</html>
