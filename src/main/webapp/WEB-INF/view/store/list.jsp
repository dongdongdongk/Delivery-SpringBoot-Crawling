<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="/css/home.css">
    <link rel="stylesheet" href="/css/storeList.css">
</head>
<body>
<style>
    .btn-primary {
        color: #fff;
        background-color: #f1537b!important;
        border-color: #f1537b!important;
    }
    .btn-primary:hover {
        color: #fff;
        background-color: #a20936!important;
        border-color: #a20936!important;
    }
    .btn-outline-primary {
        color: #c21244 !important;
        border-color: #c21244!important;
    }
    .btn-outline-primary:hover {
        color: #fff;
        background-color: #f1537b!important;
        border-color: #f1537b!important;
    }
    .dot {
        height: 7px;
        width: 7px;
        margin-left: 6px;
        margin-right: 6px;
        margin-top: 3px;
        background-color: #f1537b!important;
        border-radius: 50%;
        display: inline-block;
    }

</style>
<c:import url="../common/header.jsp"/>
<div class="header-image-container">
    <%--    <img src="img/head.jpg" alt="" class="header-image">--%>
    <div class="header-text color-white">
        <h1>배달 받을곳을 입력해주세요</h1>
    </div>

</div>
<c:import url="../common/style.jsp"/>
<section style="background-color: #fcfbfb;">
    <c:forEach var="storeList" items="${storeList}">
       <c:choose>
           <c:when test="${fn:length(storeList.title) < 1}">
               <h1>음식점이 없습니다</h1>
           </c:when>
           <c:otherwise>
            <div class="container mt-5 mb-5">
                <div class="d-flex justify-content-center row">
                    <div class="col-md-10">
                        <div class="row p-2 bg-white border rounded">
                            <div class="col-md-3 mt-1"><img class="img-fluid img-responsive rounded product-image" src="${storeList.image}"></div>
                            <div class="col-md-6 mt-1">
                                <h5>${storeList.title}</h5>
                                <div class="d-flex flex-row">
                                    <div class="ratings mr-2"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></div><span>310</span>
                                </div>
                                <div class="mt-1 mb-1 spec-1"><span></span><span class="dot"></span><span>리뷰수:${storeList.reviewCount}</span><br><span class="dot"></span><span>조회수:${storeList.view}<br></span></div>
                                <p class="text-justify text-truncate para mb-0">${storeList.subdivision}<br><br></p>
                            </div>
                            <div class="align-items-center align-content-center col-md-3 border-left mt-1">

                                <div class="d-flex flex-column mt-4"><button class="btn btn-primary btn-sm" type="button" onclick="redirectToDetail('${storeList.url}')" >Details</button><button class="btn btn-outline-primary btn-sm mt-2" type="button">Add to wishlist</button></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
           </c:otherwise>
       </c:choose>
    </c:forEach>
</section>

<script>
    function redirectToDetail(storeURL) {
        window.location.href = '/store/detail?storeURL=' + "https://www.mangoplate.com" + encodeURIComponent(storeURL);
    }
</script>
<%--<h1>List</h1>--%>

<%--<c:forEach var="storeList" items="${storeList}">--%>
<%--    <h3>${storeList.title}</h3>--%>
<%--    <img src="${storeList.image}">--%>
<%--</c:forEach>--%>
</body>
</html>


