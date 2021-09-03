<%--
  Created by IntelliJ IDEA.
  User: MichaelCoyle
  Date: 9/3/21
  Time: 9:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="partials/head.jsp"%>
</head>
<body>
    <%@include file="partials/navbar.jsp"%>
    <form method="POST" action="/pizza-order">
        <label for="crust">Crust</label>
        <select name="crust" id="crust">
            <option value="thin">Thin</option>
            <option value="hand-tossed">Hand-tossed</option>
            <option value="pan">Pan</option>
        </select>
        <br>
        <label for="size">Size</label>
        <select name="size" id="size">
            <option value="small">Small</option>
            <option value="medium">Medium</option>
            <option value="large">Large</option>
            <option value="extra-large">Extra-large</option>
        </select>
        <br>
        <label for="sauce">Sauce</label>
        <select name="sauce" id="sauce">
            <option value="none">None</option>
            <option value="marinara">Marinara</option>
            <option value="white">White</option>
            <option value="pesto">Pesto</option>
        </select>
        <br>
        <h4>Toppings</h4>
        <h5>Meats</h5>
        <label for="pepperoni"><input type="checkbox" name="toppings" id="pepperoni"> pepperoni</label><br>
        <label for="italian-sausage"><input type="checkbox" name="toppings" id="italian-sausage"> italian sausage</label><br>
        <label for="canadian-bacon"><input type="checkbox" name="toppings" id="canadian-bacon"> canadian bacon</label><br>
        <label for="bacon"><input type="checkbox" name="toppings" id="bacon"> bacon</label><br>
        <label for="ground-beef"><input type="checkbox" name="toppings" id="ground-beef"> ground beef</label><br>
        <label for="anchovies"><input type="checkbox" name="toppings" id="anchovies"> anchovies</label><br>
        <h5>Veggies</h5>
        <label for="mushrooms"><input type="checkbox" name="toppings" id="mushrooms"> anchovies</label><br>
        <label for="black-olives"><input type="checkbox" name="toppings" id="black-olives"> anchovies</label><br>
        <label for="bell-peppers"><input type="checkbox" name="toppings" id="bell-peppers"> anchovies</label><br>
        <label for="onions"><input type="checkbox" name="toppings" id="onions"> onions</label><br>
        <label for="tomatoes"><input type="checkbox" name="toppings" id="tomatoes"> tomatoes</label><br>
        <label for="jalepeños"><input type="checkbox" name="toppings" id="jalepeños"> jalepeños</label>
    </form>
</body>
</html>
