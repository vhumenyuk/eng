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

    <div class="list-type1">
        <h1 style="margin-left: 150px; color: whitesmoke">Your tasks: </h1>
        <ol>
            <c:forEach var="task" items="${listOfTasks}">
                <li><a href="${contextPath}/tasks"><c:out value="${task.getDescription()}"/></a></li>
            </c:forEach>
        </ol>
    </div>

</section>
</body>
</html>
