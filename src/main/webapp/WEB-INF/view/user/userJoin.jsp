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
    <link rel="stylesheet" href="/css/footer.css">
    <link rel="stylesheet" href="/css/user.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</head>
<body>
<c:import url="../common/header.jsp"></c:import>
<c:import url="../common/style.jsp"/>
<!-- Navbar-->
<header class="header">
    <nav class="navbar navbar-expand-lg navbar-light py-3">
<%--        <div class="container">--%>
<%--            <!-- Navbar Brand -->--%>
<%--            <a href="#" class="navbar-brand">--%>
<%--                <img src="/img/logo.svg" alt="logo" width="150">--%>
<%--            </a>--%>
<%--        </div>--%>
    </nav>
</header>
<style>
    .btn-primary {
        color: #fff;
        background-color: #ee2f5f;
        border-color: #ee2f5f;
    }
    .btn-primary:hover {
        color: #fff;
        background-color: #a20936;
        border-color: #a20936;
    }
    .text-muted {
        color: #d5214e !important;
    }
    .input-group-text {
        color: #b61142;
    }
    input[type='date']::before {
        content: attr(data-placeholder);
        width: 100%;
    }

    .text-primary {
        color: #ee2f5f!important; ;
    }

    .text-alert {
        color: red;
        font-weight: bold;
    }

</style>


<div class="container">
    <div class="row py-5 mt-4 align-items-center">
        <!-- For Demo Purpose -->
        <div class="col-md-5 pr-lg-5 mb-5 mb-md-0">
            <img src="https://cdn-icons-png.flaticon.com/512/7541/7541900.png" alt="" class="img-fluid mb-3 d-none d-md-block">
            <h1>Create an Account</h1>
            <p class="font-italic text-muted mb-0">엄선된 맛집에서 간편하게 배달 또는 방문포장 주문을 하실 수 있는 웹서비스입니다.</p>
        </div>

        <!-- Registeration Form -->
        <div class="col-md-7 col-lg-6 ml-auto">
            <form id="userJoin" action="userJoin" method="post">
                <div class="row">


                    <!-- 아이디 -->
                    <div class="input-group col-lg-12">
                        <div class="input-group-prepend">
                            <span class="input-group-text bg-white px-4 border-md border-right-0">
                                <i class="fa fa-user text-muted"></i>
                            </span>
                        </div>
                        <input id="id" type="text" name="id" placeholder="아이디" class="form-control bg-white border-left-0 border-md">
                    </div>
                    <div class="col-lg-12 text-alert mb-4">${errorMsg.id}</div>
                    <!-- 이름 -->
                    <div class="input-group col-lg-12">
                        <div class="input-group-prepend">
                            <span class="input-group-text bg-white px-4 border-md border-right-0">
                                <i class="fa fa-user text-muted"></i>
                            </span>
                        </div>
                        <input id="userName" type="text" name="userName" placeholder="이름" class="form-control bg-white border-left-0 border-md">
                    </div>
                    <div class="col-lg-12 text-alert mb-4">${errorMsg.userName}</div>
                    <!--닉네임-->
                    <div class="input-group col-lg-12">
                        <div class="input-group-prepend">
                            <span class="input-group-text bg-white px-4 border-md border-right-0">
                                <i class="fa fa-user text-muted"></i>
                            </span>
                        </div>
                        <input id="nickname" type="text" name="nickname" placeholder="닉네임" class="form-control bg-white border-left-0 border-md">
                    </div>
                    <div class="col-lg-12 text-alert mb-4">${errorMsg.nickName}</div>
                  <!--birth-->
                    <div class="input-group col-lg-12">
                        <div class="input-group-prepend">
                            <span class="input-group-text bg-white px-4 border-md border-right-0">
                                <i class="fa fa-calendar text-muted"></i>
                            </span>
                        </div>
                        <input id="birth" type="date" name="birth" data-placeholder="생년월일" class="form-control bg-white border-left-0 border-md">
                    </div>
                    <div class="col-lg-12 text-alert mb-4">${errorMsg.birth}</div>

                    <!-- Email Address -->
                    <div class="input-group col-lg-12">
                        <div class="input-group-prepend">
                            <span class="input-group-text bg-white px-4 border-md border-right-0">
                                <i class="fa fa-envelope text-muted"></i>
                            </span>
                        </div>
                        <input id="email" type="email" name="email" placeholder="이메일" class="form-control bg-white border-left-0 border-md">
                    </div>
                    <div class="col-lg-12 text-alert mb-4">${errorMsg.email}</div>

                    <!-- Phone Number -->
                    <div class="input-group col-lg-12">
                        <div class="input-group-prepend">
                            <span class="input-group-text bg-white px-4 border-md border-right-0">
                                <i class="fa fa-phone-square text-muted"></i>
                            </span>
                        </div>
                        <input id="phoneNumber" type="tel" name="phoneNumber" placeholder="휴대폰 번호" class="form-control bg-white border-md border-left-0 pl-3">
                    </div>
                    <div class="col-lg-12 text-alert mb-4">${errorMsg.phoneNumber}</div>



                    <div class="input-group col-lg-12">
                        <div class="input-group-prepend">
                            <span class="input-group-text bg-white px-4 border-md border-right-0">
                                <i class="fa fa-male" aria-hidden="true"></i>
                            </span>
                        </div>
                       <!--성별-->
                        <select id="gender" name="gender" class="form-control custom-select bg-white border-left-0 border-md">
                            <option value="">성별</option>
                            <option value="남자">남자</option>
                            <option value="여자">여자</option>
                        </select>
                    </div>
                    <div class="col-lg-12 text-alert mb-4">${errorMsg.gender}</div>

                    <!-- Password -->
                    <div class="input-group col-lg-12">
                        <div class="input-group-prepend">
                            <span class="input-group-text bg-white px-4 border-md border-right-0">
                                <i class="fa fa-lock text-muted"></i>
                            </span>
                        </div>
                        <input id="password" type="password" name="password" placeholder="비밃번호" class="form-control bg-white border-left-0 border-md">
                        <div class="input-group-prepend">
                            <span class="input-group-text bg-white px-4 border-md border-right-0">
                                <i class="fa fa-lock text-muted"></i>
                            </span>
                        </div>
                        <input id="passwordCheck" type="password" name="passwordCheck" placeholder="비밀번호 확인" class="form-control bg-white border-left-0 border-md">
                    </div>
                    <div class="col-lg-12 text-alert mb-4">${errorMsg.password}</div>

                    <!-- Password Confirmation -->
<%--                    <div class="input-group col-lg-6 mb-4">--%>
<%--                    </div>--%>

                    <div class="form-group col-lg-12 mx-auto mb-0">
                        <button type="submit" class="btn btn-primary btn-block py-2">
                            <span class="font-weight-bold">Create your account</span>
                        </button>
                    </div>
<%--                    <!-- Submit Button -->--%>
<%--                    <div class="form-group col-lg-12 mx-auto mb-0">--%>
<%--                        <a href="#" class="btn btn-primary btn-block py-2">--%>
<%--                            <span class="font-weight-bold">Create your account</span>--%>
<%--                        </a>--%>
<%--                    </div>--%>

                    <!-- Divider Text -->
                    <div class="form-group col-lg-12 mx-auto d-flex align-items-center my-4">
                        <div class="border-bottom w-100 ml-5"></div>
                        <span class="px-2 small text-muted font-weight-bold text-muted">OR</span>
                        <div class="border-bottom w-100 mr-5"></div>
                    </div>

                    <!-- Social Login -->
                    <div class="form-group col-lg-12 mx-auto">
                        <a href="#" class="btn btn-primary btn-block py-2 btn-facebook">
                            <i class="fa fa-facebook-f mr-2"></i>
                            <span class="font-weight-bold">Continue with Facebook</span>
                        </a>
                        <a href="#" class="btn btn-primary btn-block py-2 btn-twitter">
                            <i class="fa fa-twitter mr-2"></i>
                            <span class="font-weight-bold">Continue with Twitter</span>
                        </a>
                    </div>

                    <!-- Already Registered -->
                    <div class="text-center w-100">
                        <p class="text-muted font-weight-bold">이미 아이디가 있으십니까? <a href="#" class="text-primary ml-2">Login</a></p>
                    </div>

                </div>
            </form>
        </div>
    </div>
</div>


<c:import url="../common/footer.jsp"/>
<script src="/js/userJoin.js"></script>
</body>
</html>