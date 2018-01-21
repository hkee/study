<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>


<div class="container" style="padding-top:50px;">
  <h2 >아이디 찾기</h2>
  <form name="ffindID" id="ffindID" class="form-horizontal" >   
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
        <!-- <button  class="btn btn-default" onclick="javascript:join();">Submit</button> -->
        <a class="btn btn-info" href="javascript:findid();">확인</a>
      </div>
    </div>
    
    <div class="form-group" id="searchIDresult" style="display:none">
      <label class="control-label col-sm-2" >아이디는 <span id="searchID">${membervo.id }</span>입니다. </label>
    </div>  
    
  </form>
  
</div>

<div style="display:none">
	<form name="fchangePWD" id="fchangePWD" class="form-horizontal" >   
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">비밀번호:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="name" placeholder="Enter name" name="name">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">비밀번호 확인:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="email" placeholder="Enter email" name="email">
      </div>
    </div>  
   
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <!-- <button  class="btn btn-default" onclick="javascript:join();">Submit</button> -->
        <a class="btn btn-info" href="javascript:findid();">확인</a>
      </div>
    </div>
  </form>
</div>
<%@include file="/WEB-INF/views/include/footer.jsp" %>
<script src="/js/member/findid.js"></script> 

