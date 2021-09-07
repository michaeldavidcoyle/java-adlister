<%--
  Created by IntelliJ IDEA.
  User: MichaelCoyle
  Date: 9/7/21
  Time: 11:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <%@include file="/partials/head.jsp"%>
</head>
<body>
    <%@include file="/partials/navbar.jsp"%>
    <div class="container">
        <h1>dao.Ads</h1>
        <c:forEach var="ad" items="${allAds}">
            <div class="item">
                <h3>${ad.title}</h3>
                <p>${ad.description}</p>
            </div>
        </c:forEach>
    </div>
</body>
</html>
