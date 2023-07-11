<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h1>List</h1>

<c:forEach var="storeList" items="${storeList}">
    <h3>${storeList.title}</h3>
    <img src="${storeList.image}">
</c:forEach>