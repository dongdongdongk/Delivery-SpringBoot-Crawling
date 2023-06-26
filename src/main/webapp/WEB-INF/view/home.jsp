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
</head>
<body>
<c:import url="common/header.jsp"/>
<c:import url="common/style.jsp"/>
<div class="container py-5">
    <!-- For Demo Purpose-->
    <header class="text-center mb-5">
<%--        <h1 class="display-4 font-weight-bold">배달 사이트</h1>--%>
<%--        <p class="font-italic text-muted mb-0">무엇을 배달 해드릴까요?</p>--%>
<%--        <p class="font-italic text-muted">-배달배달-<a href="https://bootstrapious.com" class="text-muted">--%>
<%--            <u>배달은 옳다</u></a>--%>
<%--        </p>--%>
    </header>
    <c:import url="common/address.jsp"></c:import>

    <div class="row pb-5 mb-4">
        <div class="col-lg-3 col-md-6 mb-4 mb-lg-0">
            <!-- Card-->
            <div class="card rounded shadow-sm border-0">
                <div class="card-body p-1"><img
                        src="img/pizza.jpg" alt=""
                        class="img-fluid d-block mx-auto mb-3 border-radius">
                    <h5 class="text-center">피자/양식</h5>
                    <ul class="list-inline small">
                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star-o text-success"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star-o text-success"></i></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 mb-4 mb-lg-0">
            <!-- Card-->
            <div class="card rounded shadow-sm border-0">
                <div class="card-body p-1"><img
                        src="img/chicken.jpg" alt=""
                        class="img-fluid d-block mx-auto mb-3 border-radius">
                    <h5 class="text-center">치킨</h5>
                    <ul class="list-inline small">
                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 mb-4 mb-lg-0">
            <!-- Card-->
            <div class="card rounded shadow-sm border-0">
                <div class="card-body p-1"><img
                        src="img/snack bar.jpg" alt=""
                        class="img-fluid d-block mx-auto mb-3 border-radius">
                    <h5 class="text-center">분식</h5>

                    <ul class="list-inline small">
                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star-o text-success"></i></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 mb-4 mb-lg-0 ">
            <!-- Card-->
            <div class="card rounded shadow-sm border-0">
                <div class="card-body p-1"><img
                        src="img/salad.jpg" alt=""
                        class="img-fluid d-block mx-auto mb-3 border-radius">
                    <h5 class="text-center">샐러드</h5>

                    <ul class="list-inline small">
                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star-o text-success"></i></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 mb-4 mb-lg-0 mt-3">
            <!-- Card-->
            <div class="card rounded shadow-sm border-0">
                <div class="card-body p-1"><img
                        src="img/night.jpg" alt=""
                        class="img-fluid d-block mx-auto mb-3 border-radius">
                    <h5 class="text-center">야식</h5>

                    <ul class="list-inline small">
                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star-o text-success"></i></li>
                    </ul>

                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 mb-4 mb-lg-0 mt-3">
            <!-- Card-->
            <div class="card rounded shadow-sm border-0">
                <div class="card-body p-1"><img
                        src="img/Japanese.jpg" alt=""
                        class="img-fluid d-block mx-auto mb-3 border-radius">
                    <h5 class="text-center">일식</h5>

                    <ul class="list-inline small">
                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star-o text-success"></i></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 mb-4 mb-lg-0 mt-3">
            <!-- Card-->
            <div class="card rounded shadow-sm border-0">
                <div class="card-body p-1"><img
                        src="img/fruit.jpg" alt=""
                        class="img-fluid d-block mx-auto mb-3 border-radius">
                    <h5 class="text-center">과일</h5>

                    <ul class="list-inline small">
                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star-o text-success"></i></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 mb-4 mb-lg-0 mt-3">
            <!-- Card-->
            <div class="card rounded shadow-sm border-0">
                <div class="card-body p-1"><img
                        src="img/dessert.jpg" alt=""
                        class="img-fluid d-block mx-auto mb-3 border-radius">
                    <h5 class="text-center">디저트</h5>

                    <ul class="list-inline small">
                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star-o text-success"></i></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 mb-4 mb-lg-0 mt-3">
            <!-- Card-->
            <div class="card rounded shadow-sm border-0">
                <div class="card-body p-1"><img
                        src="img/Korean.jpg" alt=""
                        class="img-fluid d-block mx-auto mb-3 border-radius">
                    <h5 class="text-center">한식</h5>

                    <ul class="list-inline small">
                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star-o text-success"></i></li>
                    </ul>
                </div>
            </div>
        </div>



        <div class="col-lg-3 col-md-6 mb-4 mb-lg-0 mt-3">
            <!-- Card-->
            <div class="card rounded shadow-sm border-0">
                <div class="card-body p-1"><img
                        src="img/Chinese.jpg" alt=""
                        class="img-fluid d-block mx-auto mb-3 border-radius">
                    <h5 class="text-center">중식</h5>
                    <ul class="list-inline small">
                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                        <li class="list-inline-item m-0"><i class="fa fa-star-o text-success"></i></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

</div>
<c:import url="common/footer.jsp"/>
</body>
</html>