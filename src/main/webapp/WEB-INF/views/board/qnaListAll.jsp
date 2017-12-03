<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp" %>
<%@include file="../include/nav.jsp" %>
<%@include file="../include/boardSider.jsp" %>
<html>
<head>
<link href="//fonts.googleapis.com/css?family=Lobster&subset=latin,latin-ext" rel="stylesheet" type="text/css">
<style>
h1 {
    color: #FCA205;
    font-family: 'Lobster';
}
boardcontainer{
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
}

</style>
</head>
<body>
<div style=" padding-left:17%;"><div><h1>QnA Board</h1></div>
<div class="form-group" style="float:right">
  <div class="form-inline">
    <input class="form-control" id="keyword" type="text" style="width:150px">
     <button class="btn btn-info">검색</button> 
     <a href="/board/register"><button class="btn btn-info">글쓰기</button></a>
  </div>
 </div>
<div class="boardcontainer">
	<table class="table">
			<thead>
			<tr>
				<th>글번호</th>
				<th style="width:40%">제목</th>
				<th>공개여부</th>
				<th>작성자</th>
				<th>조회수</th>
				<th>작성일</th>
			</tr>
		</thead>
	
	</table>

</div>
Notice<br>Notice<br>Notice<br>Notice<br>Notice<br>Notice<br>Notice<br>Notice<br><br>Notice<br>Notice<br><br>Notice<br>Notice<br><br>Notice<br>Notice<br><br>Notice<br>Notice<br><br>Notice<br>Notice<br><br>Notice<br>Notice<br></div>
</body>
</html>
<%@include file="../include/footer.jsp" %>