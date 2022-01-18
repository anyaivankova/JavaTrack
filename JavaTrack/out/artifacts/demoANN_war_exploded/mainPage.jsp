<%@ page import="static jdk.nashorn.internal.objects.Global.println" %><%--
  Created by IntelliJ IDEA.
  User: Mik Tarnavskiy
  Date: 20.12.2021
  Time: 13:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<header style="display: flex;flex-direction: row;justify-content:space-around;height: 10%">
    <button class="w3-btn w3-green w3-round-large" style="width: 40%" onclick="location.href='mainPage.jsp'"><h2>Main Page</h2>
    </button>
    <button class="w3-btn w3-green w3-round-large" style="width: 40%" onclick="location.href='profile.jsp'"><h2>Profile</h2>
    </button>
</header>
<body class="w3-light-grey">
<div class="w3-container w3-padding">

    <div class="w3-card-4">
        <div class="w3-container w3-center w3-green">
            <h1 align="center">Calculate</h1>
        </div>

        <form onsubmit="return false" oninput="amount.value = (weight.valueAsNumber * size.valueAsNumber) * 10 - 0.01"
            class="w3-selection w3-light-grey w3-padding">
            <p><b>Адрес откуда:</b><br>
                <input required="required" type="text" size="40" name="start_address"
                       class="w3-input w3-animate-input w3-border w3-round-large">
            <p><b>Адрес куда:</b><br>
                <input required="required" type="text" size="40" name="final_address"
                       class="w3-input w3-animate-input w3-border w3-round-large">
            <p><b>Размер груза (м3):</b><br>
                <input required="required" type="number" min="1" size="40" id="size" name="size" class="w3-input w3-animate-input w3-border w3-round-large">
            <p><b>Вес груза (кг):</b><br>
                <input required="required" type="number" min="1" size="40" id="weight" name="weight"
                       class="w3-input w3-animate-input w3-border w3-round-large">
            <p align="center">Total: <strong><output name="amount" for="hours rate vat">0</output> UAN</strong></p>
        </form>


    </div>
</div>
</body>
</body>
</html>
