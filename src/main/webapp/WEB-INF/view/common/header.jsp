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
    <title>Document</title>
    <style>
        /* CSS code */
        .banner {
            background-color: #e7253f;
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
            height: calc(50vh - 50px); /* Adjust the height value as needed */
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
        .address_search {

        }
    </style>
</head>
<body>
    <div class="banner">
        <h1>배달배달</h1>
    </div>
        <div class="header-image-container">
            <img src="img/head.jpg" alt="" class="header-image">
            <div class="header-text">
                배달 받을곳을 입력해주세요
            </div>
            <section class="address_search">
                <div id="search_box">
                    <div>
                        <input type="hidden" id="deleveryAddress1" placeholder="우편번호" value="${BMaddress.address1 }" name="address1" readonly>
                        <input type="text" value="${BMaddress.address2 }"
                               id="deleveryAddress2" readonly placeholder="주소를 입력해 주세요" name="address2"><br>
                    </div>

                    <div class="search_btn">
                        <label for="search_btn">
                            <i class="fas fa-search"></i>
                        </label>

                        <input type="button" name="search" id="search_btn">

                    </div>

                </div>
            </section>
        </div>

</body>
</html>