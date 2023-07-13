<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="/css/storeDetail.css">
</head>
<body>
<c:import url="../common/header.jsp"/>
<div class="header-image-container">
    <%--    <img src="img/head.jpg" alt="" class="header-image">--%>
    <div class="header-text color-white">
        <h1>배달 받을곳을 입력해주세요</h1>
    </div>

</div>
<c:import url="../common/style.jsp"/>
<link rel='stylesheet' href='https://sachinchoolur.github.io/lightslider/dist/css/lightslider.css'>
<div class="container-fluid mt-2 mb-3">
    <div class="row no-gutters">
        <div class="col-md-5 pr-2">
            <div class="card">
                <div class="demo">
                    <ul id="lightSlider">
<%--                        <c:forEach var="storeImages" items="${storeImages}" >--%>
<%--                            <c:if test="${empty storeImages}">--%>
<%--                                <li data-thumb="/img/noImg.gif"><img class="oriImg" src="/img/noImg.gif"/></li>--%>
<%--                            </c:if>--%>
<%--                            <li data-thumb="${storeImages.image}"><img class="oriImg" src="${storeImages.image}"/></li>--%>
<%--                        </c:forEach>--%>

                        <c:forEach var="storeImages" items="${storeImages}">
                            <li data-thumb="${storeImages.image}">
                                <img class="oriImg" src="${storeImages.image}"/>
                            </li>
                            <c:if test="${empty storeImages.image}">
                                    <li data-thumb="/img/noImg.gif">
                                        <img class="oriImg" src="/img/noImg.gif" alt="이미지 없음"/>
                                    </li>
                            </c:if>

                        </c:forEach>

                    </ul>
                </div>
            </div>
            <div class="card mt-2"><h6>Reviews</h6>
                <div class="d-flex flex-row">
                    <div class="stars"><i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i></div>
                    <span class="ml-1 font-weight-bold">4.6</span></div>
                <hr>
                <div class="badges"><span class="badge bg-dark ">All (230)</span> <span class="badge bg-dark "> <i
                        class="fa fa-image"></i> 23 </span> <span class="badge bg-dark "> <i
                        class="fa fa-comments-o"></i> 23 </span> <span class="badge bg-warning"> <i
                        class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
                        class="fa fa-star"></i> <span class="ml-1">2,123</span> </span></div>
                <hr>
                <div class="comment-section">
                    <div class="d-flex justify-content-between align-items-center">
                        <div class="d-flex flex-row align-items-center"><img  src="https://i.imgur.com/o5uMfKo.jpg"
                                                                             class="rounded-circle profile-image oriImg">
                            <div class="d-flex flex-column ml-1 comment-profile">
                                <div class="comment-ratings"><i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
                                        class="fa fa-star"></i> <i class="fa fa-star"></i></div>
                                <span class="username">Lori Benneth</span></div>
                        </div>
                        <div class="date"><span class="text-muted">2 May</span></div>
                    </div>
                    <hr>
                    <div class="d-flex justify-content-between align-items-center">
                        <div class="d-flex flex-row align-items-center"><img src="https://i.imgur.com/tmdHXOY.jpg"
                                                                             class="rounded-circle profile-image">
                            <div class="d-flex flex-column ml-1 comment-profile">
                                <div class="comment-ratings"><i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
                                        class="fa fa-star"></i> <i class="fa fa-star"></i></div>
                                <span class="username">Timona Simaung</span></div>
                        </div>
                        <div class="date"><span class="text-muted">12 May</span></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-7">
            <div class="card">
                <div class="d-flex flex-row align-items-center">
                    <div class="p-ratings"><i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
                            class="fa fa-star"></i> <i class="fa fa-star"></i></div>
                    <span class="ml-1">5.0</span></div>
                <div class="about">
                        <h4 class="font-weight-bold">${storeDetail.title}</h4>
                    <c:if test="${empty storeDetail.title}">
                        <h4 class="font-weight-bold">내용 없음</h4>
                    </c:if>
                        <span class="font-weight-bold">${storeTable.foodType} </span>
                    <c:if test="${empty storeTable.foodType}">
                        <span class="font-weight-bold">내용 없음</span>
                    </c:if>
                </div>
                <div class="buttons">
                    <button class="btn btn-outline-warning btn-long cart">Add to Cart</button>
                    <button class="btn btn-warning btn-long buy">Buy it Now</button>
                    <button class="btn btn-light wishlist"><i class="fa fa-heart"></i></button>
                </div>
                <hr>
                <div class="product-description">
                    <div class="d-flex flex-row align-items-center">
                        <i class="fa fa-calendar-check-o"></i>
                        <span class="ml-1">상세 주소 : ${storeTable.address}</span>
                        <c:if test="${empty storeTable.address}">
                            <span class="ml-1">내용 없음</span>
                        </c:if>
                    </div>
                    <div class="d-flex flex-row align-items-center mt-2">
                        <i class="fa fa-calendar-check-o"></i>
                        <span class="ml-1">전화번호 : ${storeTable.phoneNumber}</span>
                        <c:if test="${empty storeTable.phoneNumber}">
                            <span class="ml-1">내용 없음</span>
                        </c:if>
                    </div>
                    <div class="d-flex flex-row align-items-center mt-2">
                        <i class="fa fa-calendar-check-o"></i>
                        <span class="ml-1">분류 : ${storeTable.foodType}</span>
                        <c:if test="${empty storeTable.foodType}">
                            <span class="ml-1">내용 없음</span>
                        </c:if>
                    </div>
                    <div class="d-flex flex-row align-items-center mt-2">
                        <i class="fa fa-calendar-check-o"></i>
                        <span class="ml-1">가격대 : ${storeTable.priceRange}</span>
                        <c:if test="${empty storeTable.priceRange}">
                            <span class="ml-1">내용 없음</span>
                        </c:if>
                    </div>
                    <div class="d-flex flex-row align-items-center mt-2">
                        <i class="fa fa-calendar-check-o"></i>
                        <span class="ml-1">주차 : ${storeTable.parking}</span>
                        <c:if test="${empty storeTable.parking}">
                            <span class="ml-1">내용 없음</span>
                        </c:if>
                    </div>
                    <div class="d-flex flex-row align-items-center mt-2">
                        <i class="fa fa-calendar-check-o"></i>
                        <span class="ml-1">영업 시간 : ${storeTable.time}</span>
                        <c:if test="${empty storeTable.time}">
                            <span class="ml-1">내용 없음</span>
                        </c:if>
                    </div>
                    <div class="d-flex flex-row align-items-center mt-2">
                        <i class="fa fa-calendar-check-o"></i>
                        <span class="ml-1">마지막 주문 : ${storeTable.lastOrder}</span>
                        <c:if test="${empty storeTable.lastOrder}">
                            <span class="ml-1">내용 없음</span>
                        </c:if>
                    </div>

<%--                    <div class="mt-2">--%>
<%--                        <div class="bullets">--%>
<%--                            <div class="d-flex align-items-center"><span class="dot"></span> <span class="bullet-text">Best in Quality</span>--%>
<%--                            </div>--%>
<%--                            <div class="d-flex align-items-center"><span class="dot"></span> <span class="bullet-text">Anti-creak joinery</span>--%>
<%--                            </div>--%>
<%--                            <div class="d-flex align-items-center"><span class="dot"></span> <span class="bullet-text">Sturdy laminate surfaces</span>--%>
<%--                            </div>--%>
<%--                            <div class="d-flex align-items-center"><span class="dot"></span> <span class="bullet-text">Relocation friendly design</span>--%>
<%--                            </div>--%>
<%--                            <div class="d-flex align-items-center"><span class="dot"></span> <span class="bullet-text">High gloss, high style</span>--%>
<%--                            </div>--%>
<%--                            <div class="d-flex align-items-center"><span class="dot"></span> <span class="bullet-text">Easy-access hydraulic storage</span>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
                    <div class="mt-2"><span class="font-weight-bold">Store</span></div>
                    <div class="d-flex flex-row align-items-center"><img src="https://i.imgur.com/N2fYgvD.png"
                                                                         class="rounded-circle store-image">
                        <div class="d-flex flex-column ml-1 comment-profile">
                            <div class="comment-ratings"><i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
                                    class="fa fa-star"></i> <i class="fa fa-star"></i></div>
                            <span class="username">배달 배달</span> <small class="followers">25K Followers</small>
                        </div>
                    </div>
                </div>
                <div class="d-flex align-items-center mt-3"><span class="dot"></span> <span class="bullet-text">마지막 ${storeDetail.lastUpdate} </span>
                </div>
            </div>
            <div class="card mt-2"><span>미리보기:</span>
                <div class="similar-products mt-2 d-flex flex-row">
                    <c:forEach var="storeImages" items="${storeImages}" >
                        <div class="card border p-1" style="width: 9rem;margin-right: 3px;">
                            <img src="${storeImages.image}" class="card-img-top" alt="...">
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>
<script src='https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js'></script>
<script src='https://sachinchoolur.github.io/lightslider/dist/js/lightslider.js'></script>
<script> $('#lightSlider').lightSlider({gallery: true, item: 1, loop: true, slideMargin: 0, thumbItem: 9});
</script>
</body>
</html>
