<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>

	 <div class="container">
        <div class="text-center" style="padding-top:50px;">
			<h1>로그인</h1> 

			<form class="form-horizontal"  name="f" method="post" action="">
			  <div class="form-group">
			    <label class="control-label col-sm-2" for="email">아이디:</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control"  name="id" id="id" maxlength="30" placeholder="Enter id">
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="control-label col-sm-2" for="pwd">Password:</label>
			    <div class="col-sm-10"> 
			      <input type="password" class="form-control" name="password" id="password" >
			    </div>
			  </div>
			 
			  <div class="form-group"> 
			    <div class="col-sm-offset-2 col-sm-10">
			       <a class="btn btn-info" href="javascript:login();">로그인</a>
			    </div>
			  </div>
			</form> 

			<button type="button" class="btn btn-link" onclick="location.href='/member/join'">회원가입</button>
			<button type="button" class="btn btn-link" onclick="location.href='/member/findID'">아이디찾기</button>
			<button type="button" class="btn btn-link" onclick="location.href='/member/changePWD'">비밀변호변경</button>
		</div>
	</div>

<%@include file="/WEB-INF/views/include/footer.jsp" %>
<script src="/js/member/login.js"></script> 
