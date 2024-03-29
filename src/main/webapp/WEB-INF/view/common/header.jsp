<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding:wght@400;700&display=swap" rel="stylesheet">
    <title>Document</title>
    <style>
        /* CSS code */
        .banner {
            background-color: #ee2f5f;
            color: white;
            padding: 10px;
            text-align: left;

        }
        *{
            font-family: 'Nanum Gothic Coding', monospace;
        }
        .header-image-container {
            position: relative;
            display: inline-block;
        }

        .header-image {
            width: 100vw;
            height: calc(25vh - 50px); /* Adjust the height value as needed */
            object-fit: cover;
            object-position: center top;
        }
        .header-text {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            color: #030303;
            font-size: 24px;
            font-weight: bold;
            text-align: center;
            /*text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);*/
            max-width: 80%;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }
        .color-Black {
         color: #ffffff;
         border: #000000;
        }

        .white-filter {
            filter: invert(100%) sepia(0%) saturate(7500%) hue-rotate(320deg) brightness(99%) contrast(103%);
        }
        .headtext {
            font-weight: bold;
            font-size: xx-large;
        }
        a {
            color: #ffffff!important;
            text-decoration: none;
            background-color: transparent;
        }
        a:hover {
            color: #ffffff!important;
            text-decoration: none!important;
        }

    </style>
</head>
<body>
    <div class="banner">
        <a href="/">
            <img src="/img/logo.svg" alt="logo" height="130" width="130" class="white-filter">
        </a>
        <span class="headtext">
            <a href="/">배달배달</a>
            <sec:authorize access="isAnonymous()">
            <a href="/user/userLogin"><button type="button" class="btn btn-outline-light ">로그인</button></a>
            <a href="/user/userJoin"><button type="button" class="btn btn-outline-light ">회원가입</button></a>
            </sec:authorize>
            <sec:authorize access="isAuthenticated()">
                <a href="temp"></a>
                <a href="/user/userLogout"><button type="button" class="btn btn-outline-light ">로그아웃</button></a>
                <a href="/user/myPage"><button type="button" class="btn btn-outline-light ">마이페이지</button></a>
            </sec:authorize>
        </span>
    </div>
<%--        <div class="header-image-container">--%>
<%--            <img src="img/head.jpg" alt="" class="header-image">--%>
<%--            <div class="header-text color-white">--%>
<%--               <h1>배달 받을곳을 입력해주세요</h1>--%>
<%--            </div>--%>

<%--        </div>--%>

</body>
</html>