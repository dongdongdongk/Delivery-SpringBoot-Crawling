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
    <title>Document</title>
    <link rel="stylesheet" href="/css/myPage.css">
    <style>
        tbody tr:hover {
            background-color: #ffdbe1!important;
            cursor: pointer;
        }
        .bg-primary2 {
            background-color: #ee2f5f!important;
        }
    </style>
</head>
<body>
<c:import url="../common/header.jsp"/>
<c:import url="../common/style.jsp"/>
<div class="container mt-5">
    <div class="main-body">
            <div class="d-flex flex-column align-items-center text-center mt-3">
                <h3 class="d-flex text-center mb-3 ">회원정보</h3>
            </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="d-flex flex-column align-items-center text-center mt-3">
                        <img src="https://d2u3dcdbebyaiu.cloudfront.net/uploads/atch_img/934/c0119af1d0a5ad4505c145e9aaf7e131_res_a.gif" alt="Admin" class="rounded-circle p-1 bg-primary2 " width="110">
                    </div>
                    <div class="card-body">
                        <div class="row mb-3">
                            <div class="col-sm-3">
                                <h6 class="mb-0">아이디</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <input type="text" class="form-control" value="${userInfo.id}">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-sm-3">
                                <h6 class="mb-0">이메일</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <input type="text" class="form-control" value="${userInfo.email}">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-sm-3">
                                <h6 class="mb-0">휴대폰</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <input type="text" class="form-control" value="${userInfo.phoneNumber}">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-sm-3">
                                <h6 class="mb-0">가입일</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <input type="text" class="form-control" value="${userInfo.joinDate}">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-sm-3">
                                <h6 class="mb-0">생일</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <input type="text" class="form-control" value="${userInfo.birth}">
                            </div>
                        </div>

                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="card">
                            <div class="card-body">
                                <section class="intro">
                                    <div class="bg-image h-100" style="background-color: #ffffff;">
                                        <div class="mask d-flex align-items-center h-100">
                                            <div class="container">
                                                <div class="row justify-content-center">
                                <h5 class="d-flex align-items-center mb-3">즐겨찾기</h5>
                                                    <div class="col-12">
                                                        <div class="card">

                                                                <div class="table-responsive table-scroll" data-mdb-perfect-scrollbar="true" style="position: relative; height: 700px">
                                                                    <table class="table table-striped mb-0">
                                                                        <thead style="background-color: #f1537b;">
                                                                        <tr>
                                                                            <th scope="col">가게명</th>
                                                                            <th scope="col">분류</th>
                                                                            <th scope="col">주소</th>
                                                                        </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                            <c:forEach var="wishListVOS" items="${wishListVOS}">
                                                                                <tr onclick="redirectToDetail('${wishListVOS.storeTableVOS.url}')">
                                                                                    <td>${wishListVOS.title}</td>
                                                                                    <td>${wishListVOS.storeVOS.subdivision}</td>
                                                                                    <td>${wishListVOS.storeTableVOS.address}</td>
                                                                                </tr>
                                                                            </c:forEach>
                                                                        </tbody>
                                                                    </table>
                                                                </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    function redirectToDetail(storeURL) {
        window.location.href = '/store/detail?storeURL=' + encodeURIComponent(storeURL);
    }
</script>
</body>
</html>