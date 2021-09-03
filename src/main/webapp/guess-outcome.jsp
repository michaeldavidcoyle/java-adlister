<%--
  Created by IntelliJ IDEA.
  User: MichaelCoyle
  Date: 9/3/21
  Time: 11:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <%@include file="partials/head.jsp"%>
</head>
<body>
    <%@include file="partials/navbar.jsp"%>
    <h1>You ${param.message}!</h1><%--Don't understand why this does not display the message--%>
    <a href="/guess">Play Again</a>
</body>
</html>
