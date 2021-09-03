<%--
  Created by IntelliJ IDEA.
  User: MichaelCoyle
  Date: 9/3/21
  Time: 11:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="partials/head.jsp"%>
</head>
<body>
    <%@include file="partials/navbar.jsp"%>
    <div class="container-fluid">
        <form method="POST" action="/guess">
            <label for="guess">Guess a number between 1 and 3.</label>
            <input type="number" name="guess" id="guess" min="1", max="3">
            <input type="submit">
        </form>
    </div>
</body>
</html>
