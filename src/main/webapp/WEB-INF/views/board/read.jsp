<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp" %>
<%@include file="../include/nav.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script>
function listbutton() {
	var $gubun='${boardVO.gubun}';
  if ($gubun == 'n' )
   location.href = '/board/noticeListAll';
  else if ($gubun  == 'q')
   location.href = '/board/qna';
  else if($gubun  == 'f')
	  location.href = '/board/free';
}
</script>
<title>Insert title here</title>
</head>
<div style="padding-left:5%;padding-right:5%">

<div class="well-sm" style="background-color:#faebcc;margin-top:4%"><div style="float:left"><b>${boardVO.title }</b></div> <div style="text-align:right">등록일자:<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVO.regdate}"/></div></div>
<div class="panel panel-warning"><div style="float:left">작성자:${boardVO.id}</div> <div style="text-align:right">조회수:${boardVO.count }</div></div>
<div class="panel-body">${boardVO.contents }</div>



 </div>
 <div style="padding-left:5%;padding-right:5%">
 <button type="button" class="btn btn-default">수정</button>
 <button type="button" class="btn btn-default" onclick="location.href='/board/remove?bno=${boardVO.board_seq}'">삭제</button>
 <button type="button" class="btn btn-default" onclick="listbutton();">목록</button>
 </div>
</html>