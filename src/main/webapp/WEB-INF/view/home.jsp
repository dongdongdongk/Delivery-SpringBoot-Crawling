<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="/css/home.css">
    <link rel="stylesheet" href="/css/footer.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<style>
    .card-body h5 {
        color: black; /* Set the desired text color */
    }

</style>
<c:import url="common/header.jsp"/>
<div class="header-image-container">
<%--    <img src="img/head.jpg" alt="" class="header-image">--%>
    <div class="header-text color-white">
        <h1>배달 받을곳을 입력해주세요</h1>
    </div>

</div>
<c:import url="common/style.jsp"/>
<div class="container py-3">

    <div>
        <c:import url="common/searchBox.jsp"></c:import>
    </div>
    <c:import url="common/searchMap.jsp"></c:import>

    <section class="address_search">
        <div id="search_box" class="d-flex justify-content-center mb-5 mt-3">
<%--            <div>--%>
<%--                <input type="hidden" id="deleveryAddress1" placeholder="우편번호" value="${BMaddress.address1 }" name="address1" readonly>--%>
<%--                <input type="text" value="${BMaddress.address2 }" onclick="modifyAddress()"--%>
<%--                       id="deleveryAddress2" readonly placeholder="주소를 입력해 주세요" name="address2"><br>--%>
<%--            </div>--%>

<%--            <div class="">--%>
<%--                <input type="hidden" id="deleveryAddress1" placeholder="우편번호" value="${BMaddress.address1 }" name="address1" readonly class="">--%>
<%--                <input type="text" value="${BMaddress.address2 }" onclick="modifyAddress()" id="deleveryAddress2" placeholder="주소를 입력해 주세요" class="ui-autocomplete-input shadow" autocomplete="off" name="address2">--%>
<%--                <button type="submit" value="" id="search_btn" class="search_btn shadow">--%>
<%--                    <i class="fa fa-search inputicon"></i>--%>
<%--                </button>--%>
<%--            </div>--%>

<%--            <div class="search_btn">--%>
<%--                <label for="search_btn">--%>
<%--                    <i class="fas fa-search"></i>--%>
<%--                </label>--%>

<%--                <input type="button" name="search" id="search_btn">--%>

<%--            </div>--%>
            <c:import url="common/address.jsp"></c:import>

        </div>
    </section>
    <div class="row pb-5 mb-4">
        <div class="col-lg-3 col-md-6 mb-4 mb-lg-0">
            <a onclick="redirectToPizza()">
                <div class="card rounded shadow-sm border-0">
                    <div class="card-body p-1">
                        <img src="img/pizza.jpg" alt="" class="img-fluid d-block mx-auto mb-3 border-radius">
                        <h5 class="text-center border-text">피자</h5>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-lg-3 col-md-6 mb-4 mb-lg-0">
            <a onclick="redirectToChicken()">
                <div class="card rounded shadow-sm border-0">
                    <div class="card-body p-1"><img
                            src="img/chicken.jpg" alt=""
                            class="img-fluid d-block mx-auto mb-3 border-radius">
                        <h5 class="text-center border-text">치킨</h5>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-lg-3 col-md-6 mb-4 mb-lg-0">
            <a onclick="redirectToBunsik()">
                <div class="card rounded shadow-sm border-0">
                    <div class="card-body p-1"><img
                            src="img/snack bar.jpg" alt=""
                            class="img-fluid d-block mx-auto mb-3 border-radius">
                        <h5 class="text-center border-text">분식</h5>
                    </div>
                </div>
            </a>
        </div>
<%--        <div class="col-lg-3 col-md-6 mb-4 mb-lg-0 ">--%>
<%--            <a onclick="redirectToSalad()">--%>
<%--            <div class="card rounded shadow-sm border-0">--%>
<%--                <div class="card-body p-1"><img--%>
<%--                        src="img/salad.jpg" alt=""--%>
<%--                        class="img-fluid d-block mx-auto mb-3 border-radius">--%>
<%--                    <h5 class="text-center border-text">샐러드</h5>--%>

<%--                </div>--%>
<%--            </div>--%>
<%--            </a>--%>
<%--        </div>--%>
        <div class="col-lg-3 col-md-6 mb-4 mb-lg-0">
            <a onclick="redirectToBar()">
            <div class="card rounded shadow-sm border-0">
                <div class="card-body p-1"><img
                        src="img/bar.jpg" alt=""
                        class="img-fluid d-block mx-auto mb-3 border-radius">
                    <h5 class="text-center border-text">안주</h5>

                </div>
            </div>
            </a>
        </div>
        <div class="col-lg-3 col-md-6 mb-4 mb-lg-0 mt-3">
            <a onclick="redirectToJapanese()">
            <div class="card rounded shadow-sm border-0">
                <div class="card-body p-1"><img
                        src="img/Japanese.jpg" alt=""
                        class="img-fluid d-block mx-auto mb-3 border-radius">
                    <h5 class="text-center border-text">일식</h5>

                </div>
            </div>
            </a>
        </div>
<%--        <div class="col-lg-3 col-md-6 mb-4 mb-lg-0 mt-3">--%>
<%--            <a onclick="redirectToSalad()">--%>
<%--            <div class="card rounded shadow-sm border-0">--%>
<%--                <div class="card-body p-1"><img--%>
<%--                        src="img/fruit.jpg" alt=""--%>
<%--                        class="img-fluid d-block mx-auto mb-3 border-radius">--%>
<%--                    <h5 class="text-center border-text">과일</h5>--%>

<%--                </div>--%>
<%--            </div>--%>
<%--            </a>--%>
<%--        </div>--%>
        <div class="col-lg-3 col-md-6 mb-4 mb-lg-0 mt-3">
            <a onclick="redirectToDessert()">
            <div class="card rounded shadow-sm border-0">
                <div class="card-body p-1"><img
                        src="img/dessert.jpg" alt=""
                        class="img-fluid d-block mx-auto mb-3 border-radius">
                    <h5 class="text-center border-text">디저트</h5>

                </div>
            </div>
            </a>
        </div>
        <div class="col-lg-3 col-md-6 mb-4 mb-lg-0 mt-3">
            <a onclick="redirectToKorean()">
            <div class="card rounded shadow-sm border-0">
                <div class="card-body p-1"><img
                        src="img/Korean.jpg" alt=""
                        class="img-fluid d-block mx-auto mb-3 border-radius">
                    <h5 class="text-center border-text">한식</h5>

                </div>
            </div>
            </a>
        </div>



        <div class="col-lg-3 col-md-6 mb-4 mb-lg-0 mt-3">
            <a onclick="redirectToChinese()">
            <div class="card rounded shadow-sm border-0">
                <div class="card-body p-1"><img
                        src="img/Chinese.jpg" alt=""
                        class="img-fluid d-block mx-auto mb-3 border-radius">
                    <h5 class="text-center border-text">중식</h5>
<%--                    <ul class="list-inline small">--%>
<%--                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>--%>
<%--                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>--%>
<%--                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>--%>
<%--                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>--%>
<%--                        <li class="list-inline-item m-0"><i class="fa fa-star-o text-success"></i></li>--%>
<%--                    </ul>--%>
                </div>
            </div>
             </a>
        </div>
    </div>

</div>
<c:import url="common/footer.jsp"/>
<script>

    function redirectToPizza() {
        window.location.href = '/store/list?storeURL=' + "https://www.mangoplate.com/search/" + addressList + "피자";
    }
    function redirectToChicken() {
        window.location.href = '/store/list?storeURL=' + "https://www.mangoplate.com/search/" + addressList + "치킨";
    }
    function redirectToBunsik() {
        window.location.href = '/store/list?storeURL=' + "https://www.mangoplate.com/search/" + addressList + "떡볶이";
    }
    // function redirectToSalad() {
    //     window.location.href = '/store/list?storeURL=' + "https://www.mangoplate.com/search/" + addressList + "샐러드";
    // }
    function redirectToBar() {
        window.location.href = '/store/list?storeURL=' + "https://www.mangoplate.com/search/" + addressList + "주점";
    }
    function redirectToJapanese() {
        window.location.href = '/store/list?storeURL=' + "https://www.mangoplate.com/search/" + addressList + "일식";
    }
    // function redirectToBunsik() {
    //     window.location.href = '/store/list?storeURL=' + "https://www.mangoplate.com/search/" + addressList + "과일";
    // }
    function redirectToDessert() {
        window.location.href = '/store/list?storeURL=' + "https://www.mangoplate.com/search/" + addressList + "커피";
    }
    function redirectToKorean() {
        window.location.href = '/store/list?storeURL=' + "https://www.mangoplate.com/search/" + addressList + "한식";
    }
    function redirectToChinese() {
        window.location.href = '/store/list?storeURL=' + "https://www.mangoplate.com/search/" + addressList + "중식";
    }


</script>
</body>
</html>