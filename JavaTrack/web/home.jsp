<%@ page session="true" contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Home</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body class="w3-light-grey w3-container w3-padding">
<div style="display: flex;flex-direction: row;justify-content:space-between">
    <button class="w3-btn w3-grey w3-round-large" style="width: 30%" onclick="location.href='home.jsp'">
        <h2>Main Page</h2></button>
    <%if(session != null && session.getAttribute("username") != null){%>
    <button class="w3-btn w3-green w3-round-large" style="width: 30%" onclick="location.href='profile.jsp'">
        <h2>${sessionScope.username} </h2></button>
    <button class="w3-btn w3-green w3-round-large" style="width: 30%" onclick="location.href='/logOut'">
        <h2>Log out</h2></button>
    <%}else{%>
    <button class="w3-btn w3-green w3-round-large" style="width: 30%" onclick="location.href='/login'">
        <h2>Log in</h2></button>
    <%}%>
</div><br>

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
</body>
</html>
