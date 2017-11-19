<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>


<!-- <div class="jumbotron text-center">
  <h1>STUDY SQUARE</h1> 
  <p>한발짝,한걸음,꿈을향해<span class="glyphicon glyphicon-pencil"></span></p> 
  <div align="right" ><font size="1"><span class="glyphicon glyphicon-bell"></span>운영시간: AM 10:00 ~PM 11:00<br><span class="glyphicon glyphicon-phone-alt"></span>문의:012-3456-7890</font></div>
</div> -->


	 <div class="container">
        <div class="text-center">
			<h1>로그인</h1> 
			<form name="f" method="post" action="" >
				<table style="margin-left: 500px;">
					<tr>	
						<td>아이디 : </td>
						<td><input type="text" name="id" id="id" maxlength="30"/> </td>
						<td rowspan="2"><a class="button" href="javascript:login();">로그인</a></td>
					</tr>
					<tr>	
						<td>비밀번호 : </td>
						<td><input type="password" name="password" id="password"/> </td>
					</tr>
					<tr>	
					</tr>
				</table>
			</form>
		</div>
	</div>

<%@include file="/WEB-INF/views/include/footer.jsp" %>
<script src="/js/member/login.js"></script> 
