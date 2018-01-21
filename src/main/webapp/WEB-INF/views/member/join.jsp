<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>


<div class="container" style="padding-top:50px;">
  <h2 >회원가입</h2>
  <form name="fJoin" id="fJoin" class="form-horizontal" >
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">아이디:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="id" placeholder="Enter ID" name="id">
        <!-- <button type="button" class="btn btn-info" onclick="javascript:idCheck();">중복확인</button> -->
      </div>
      <a class="btn btn-info" href="javascript:idcheck();">중복확인</a> 
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">비밀번호:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd1">비밀번호 재확인:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="pwd1" placeholder="Enter password1" >
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">이름:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="name" placeholder="Enter name" name="name">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Email:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="email" placeholder="Enter email" name="email">
      </div>
    </div>
    
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <div class="checkbox">
          <label><input type="checkbox" > Remember me</label>
        </div>
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <!-- <button  class="btn btn-default" onclick="javascript:join();">Submit</button> -->
        <a class="btn btn-info" href="javascript:join();">회원가입</a>
      </div>
    </div>
  </form>
</div>

<%@include file="/WEB-INF/views/include/footer.jsp" %>
<script src="/js/member/join.js"></script> 
