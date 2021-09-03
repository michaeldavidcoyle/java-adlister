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
        <label for="pepperoni"><input type="checkbox" name="toppings" id="pepperoni" value="pepperoni"> pepperoni</label><br>
        <label for="italian-sausage"><input type="checkbox" name="toppings" id="italian-sausage" value="italian-sausage"> italian sausage</label><br>
        <label for="canadian-bacon"><input type="checkbox" name="toppings" id="canadian-bacon" value="canadian-bacon"> canadian bacon</label><br>
        <label for="bacon"><input type="checkbox" name="toppings" id="bacon" value="bacon"> bacon</label><br>
        <label for="ground-beef"><input type="checkbox" name="toppings" id="ground-beef" value="ground-beef"> ground beef</label><br>
        <label for="anchovies"><input type="checkbox" name="toppings" id="anchovies" value="anchovies"> anchovies</label><br>
        <h5>Veggies</h5>
        <label for="mushrooms"><input type="checkbox" name="toppings" id="mushrooms" value="mushrooms"> mushrooms</label><br>
        <label for="black-olives"><input type="checkbox" name="toppings" id="black-olives" value="black-olives"> black olives</label><br>
        <label for="bell-peppers"><input type="checkbox" name="toppings" id="bell-peppers" value="bell-peppers"> bell peppers</label><br>
        <label for="onions"><input type="checkbox" name="toppings" id="onions" value="onions"> onions</label><br>
        <label for="tomatoes"><input type="checkbox" name="toppings" id="tomatoes" value="tomatoes"> tomatoes</label><br>
        <label for="jalepeños"><input type="checkbox" name="toppings" id="jalepeños" value="jalepeños"> jalepeños</label><br>
        <label for="address">Delivery Address</label>
        <textarea name="address" id="address" cols="30" rows="10"></textarea><br>
        <button type="submit">Place Order</button>
    </form>
</body>
</html>
