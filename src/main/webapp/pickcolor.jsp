<%--
  Created by IntelliJ IDEA.
  User: MichaelCoyle
  Date: 9/3/21
  Time: 10:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="partials/head.jsp"%>
</head>
<body>
    <%@include file="partials/navbar.jsp"%>
    <form method="POST" action="/pickcolor">
        <label for="user-color">What is your favorite color?</label>
        <input type="text" name="color" id="user-color">
        <input type="submit">
    </form>
</body>
</html>
