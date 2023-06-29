<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        *{
            font-family: 'Nanum Gothic Coding', monospace;
        }
        .color-white {
         color: white;
         border: white;
        }
    </style>
</head>
<body>
    <div class="banner">
        <h1>배달배달</h1>
    </div>
<%--        <div class="header-image-container">--%>
<%--            <img src="img/head.jpg" alt="" class="header-image">--%>
<%--            <div class="header-text color-white">--%>
<%--               <h1>배달 받을곳을 입력해주세요</h1>--%>
<%--            </div>--%>

<%--        </div>--%>

</body>
</html>