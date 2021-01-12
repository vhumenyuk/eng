<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">
    <link href="https://fonts.googleapis.com/css?family=Lobster|Oswald:400,700|Poiret+One&display=swap"
          rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
    <title>Lang prove</title>
</head>
<body>
<header class="header">
    <div class="container">
        <div class="header_inner">
            <div class="header_logo"><a class="nav_link" href="${contextPath}/main">LangProve</a></div>
            <nav class="nav">
                <ul>
                    <sec:authorize access="isAuthenticated()">
                        <li><a class="nav_link" href="#">Cabinet</a>
                            <ul class="submenu">
                                <li><a class="nav_link" href="${contextPath}/cabinet">Your profile</a></li>
                                <li><a class="nav_link" href="${contextPath}/courses">Your course</a></li>
                                <li><a class="nav_link" href="${contextPath}/logout">Sign out</a></li>
                            </ul>
                        </li>
                        <li><a class="nav_link" href="${contextPath}/ourCourses"> Our courses</a></li>
                        <li></li>
                        <li></li>
                    </sec:authorize>
                    <sec:authorize access="!isAuthenticated()">

                        <ul>
                            <li><a class="nav_link" href="${contextPath}/ourCourses">Sign in</a></li>

                        </ul>

                    </sec:authorize>
                </ul>
            </nav>
        </div>
    </div>
</header>
<div class="intro">
    <div class="container">
        <div class="intro_inner">
            <h1 class="intro_title">Welcome to LangProve</h1>
            <a class="btn" href="#start">Let's start</a>
        </div>
    </div>
</div>
<section class="section" id="start">
    <div class="container">
        <div class="section_header">
            <h3 class="section_subtitle">What we do</h3>
            <h2 class="section_title">Story about us</h2>
            <div class="section_text">
                <p class="text">We are company, which will help you learn different language</p>
            </div>
        </div>

        <div class="about">
            <div class="about_item">
                <div class="about_img">
                    <img class="about_imgs" src="${contextPath}/resources/images/about1.jpg">
                </div>
                <div class="about_text">
                    advanced technologies
                </div>
            </div>
            <div class="about_item">
                <div class="about_img">
                    <img class="about_imgs" src="${contextPath}/resources/images/about3.jpg">
                </div>
                <div class="about_text">
                    super team
                </div>
            </div>
            <div class="about_item">
                <div class="about_img">
                    <img class="about_imgs" src="${contextPath}/resources/images/about2.jpg">
                </div>
                <div class="about_text">
                    A lot of languages
                </div>
            </div>
        </div>
    </div>
</section>
<div class="statistic">
    <div class="container">
        <div class="stat">
            <div class="stat_item">
                <div class="stat_num">N</div>
                <div class="stat_text">INFO</div>
            </div>
            <div class="stat_item">
                <div class="stat_num">N</div>
                <div class="stat_text">INFO</div>
            </div>
            <div class="stat_item">
                <div class="stat_num">N</div>
                <div class="stat_text">INFO</div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
