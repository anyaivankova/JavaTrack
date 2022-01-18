<%@ page session="true" contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Register</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body class="w3-light-grey w3-container w3-padding">
<div style="display: flex;flex-direction: row;justify-content:space-between;height: 10%">
    <button class="w3-btn w3-green w3-round-large" style="width: 30%" onclick="location.href='home.jsp'"><h2>Main Page</h2>
    </button>
</div><br>

<div class="w3-card-4">
    <div class="w3-container w3-center w3-green">
        <h1 align="center">User Sigh in Form</h1>
    </div>

    <form action ="/register" method="post" class="w3-selection w3-light-grey w3-padding w3-center">
        <p><b>User Name: </b><br><input required="required" type="text"   name="username" class="w3-input w3-animate-input w3-border w3-round-large">
        <p><b>Password: </b><br><input required="required" type="password"  name="password" class="w3-input w3-animate-input w3-border w3-round-large">
        <p><b>Email: </b><br><input required="required" type="text"  name="email" class="w3-input w3-animate-input w3-border w3-round-large">
        <p><b>Phone number: </b><br><input required="required" type="text"  name="phone" class="w3-input w3-animate-input w3-border w3-round-large">

            <br>
            <input value="Log in" onclick="location.href='/login'" class="w3-btn w3-grey w3-round-large" >
            <input value="Submit" type="submit" class="w3-btn w3-green w3-round-large">

    </form>
</div>
</body>
</html>