<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- 부트스트랩 연결 -->
	<link href="<c:url value="/../bootstrap/css/bootstrap.css" />" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="/static/css/full-calendar.css">

	<!-- IE 9 미만 버전으로 접속했을 때 HTML5와 Media Query 지원을 위해 스크립트를 연결합니다.-->
	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	<!-- jQuery연결 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="<c:url value="/../bootstrap/js/bootstrap.js" />"></script>
</head>
<body>

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
      </button>
      <a class="navbar-brand" href="#">StudyCafe</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#about">About</a></li>
        <li><a href="#drink">Drink</a></li>
        <li><a href="#studyroom">StudyRoom</a></li>
        <li><a href="http://localhost:8080/board/">Board</a></li>
        <c:choose>
        	<c:when test="${not empty session.id}">
        		<li><a href="/member/mypage">Mypage</a></li>
        		
        	</c:when>
        	<c:otherwise>
        		<li><a href="/member/login">Login</a></li>
        	</c:otherwise>
        </c:choose>
      </ul>
    </div>
  </div>
</nav>
<main class="main">