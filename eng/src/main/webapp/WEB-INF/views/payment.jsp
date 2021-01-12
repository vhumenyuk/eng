<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="springForm" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">

    <link href="https://fonts.googleapis.com/css?family=Lobster|Oswald:400,700|Poiret+One&display=swap"
          rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
    <title>Cabinet</title>

</head>

<body class="body_style">
<header class="header">
    <div class="container">
        <div class="header_inner">
            <div class="header_logo"><a class="nav_link" href="${contextPath}/main">LangProve</a></div>
            <nav class="nav">
                <ul>
                    <li><a class="nav_link" href="${contextPath}/logout">Sign out</a></li>
                </ul>
            </nav>
        </div>
    </div>
</header>

<section class="section">


    <div class="card">



        <button class="proceed"><svg class="sendicon" width="24" height="24" viewBox="0 0 24 24" onclick="putRequest()">
            <path d="M4,11V13H16L10.5,18.5L11.92,19.92L19.84,12L11.92,4.08L10.5,5.5L16,11H4Z"></path>
        </svg></button>
        <img src="https://seeklogo.com/images/V/VISA-logo-62D5B26FE1-seeklogo.com.png" class="logo-card">
        <label>Card number:</label>
        <input id="user" type="text" class="input cardnumber"  placeholder="1234 5678 9101 1121">
        <label>Name:</label>
        <input class="input name"  placeholder="Name">
        <label class="toleft">CCV:</label>
        <input class="input toleft ccv" placeholder="321">
    </div>
    <div class="receipt">
        <div class="col"><p>Cost:</p>
            <h2 class="cost">${course.getPrice()}</h2><br>
            <p>Name:</p>
            <h2 class="seller">${course.getName()}</h2>
        </div>
        <div class="col">
            <p>Bought Items:</p>
            <h3 class="bought-items">${course.getName()}</h3>
            <p class="bought-items description">${course.getDescription()}</p>
            <p class="bought-items price">${course.getPrice()}</p><br>
        </div>
        <p class="comprobe">This information will be sended to your email</p>
    </div>


</section>
<form method="post" action="${contextPath}/update/2">
    <input type="hidden" name="_method" value="put" />
    <input type="submit" class="btn" value="${delete_from_friends}">
</form>
</body>
</html>
