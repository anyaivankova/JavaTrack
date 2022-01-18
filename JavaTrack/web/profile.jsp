<%@ page session="true" contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Profile</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body class="w3-light-grey">
<div class="w3-container w3-padding">
    <div style="display: flex;flex-direction: row;justify-content:space-between;height: 10%">
        <button class="w3-btn w3-green w3-round-large" style="width: 30%" onclick="location.href='home.jsp'">
            <h2>Main Page</h2></button>
        <button class="w3-btn w3-grey w3-round-large" style="width: 30%" onclick="location.href='profile.jsp'">
            <h2>${sessionScope.username} </h2></button>
        <button class="w3-btn w3-green w3-round-large" style="width: 30%" onclick="location.href='/logOut'">
            <h2>Log out</h2></button>
    </div><br>

    <div class="w3-card-4 w3-padding">
        <div class="w3-container w3-center w3-green">
            <h1 align="center">Profile</h1>
        </div>
        <p><b>Имя Пользователя: ${sessionScope.username} </b><br>
        <p><b>Email: ${sessionScope.email} </b><br>
        <p><b>Телефон:${sessionScope.phoneNumber} </b><br>
    </div>
</div>
</body>
</html>
