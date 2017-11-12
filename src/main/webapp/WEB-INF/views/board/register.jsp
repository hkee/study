<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp" %>
<%@include file="../include/nav.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="../smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>
<title>Insert title here</title>
<script type="text/javascript">
  $(function(){
      //전역변수
      var obj = [];             
      //스마트에디터 프레임생성
      nhn.husky.EZCreator.createInIFrame({
          oAppRef: obj,
          elPlaceHolder: "contents",
          sSkinURI: "../smarteditor/SmartEditor2Skin.html",
          htParams : {
              // 툴바 사용 여부
              bUseToolbar : true,           
              // 입력창 크기 조절바 사용 여부
              bUseVerticalResizer : true,   
              // 모드 탭(Editor | HTML | TEXT) 사용 여부
              bUseModeChanger : true,
          }
      });
      //전송버튼
      $("#insertBoard").click(function(){
          //id가 smarteditor인 textarea에 에디터에서 대입
          obj.getById["contents"].exec("UPDATE_CONTENTS_FIELD", []);
          //폼 submit
          $("#insertBoardFrm").submit();
      });
      $("#re").click(function(){
      obj.getById["contents"].exec("SET_IR", [""]);
      });
  });
</script>
<script>
function clearText(field){
if(field.defaultValue == field.value) field.value = '';
else if(field.value == '') field.value = field.defaultValue;
}
function del(){
	if (confirm("글작성을 취소하시겠습니까?") == true){    //확인
		history.back();
	}else{   //취소
	    return;
	}


}

</script>




</head>
<body>

 <form method="post" id="insertBoardFrm">
 <div id="box" style="padding-top:30px;padding-bottom:30px;padding-left:10%;padding-right:10%">
 
 
<div id="box-top">
 <select name="gubun" class="form-control" style="width:150px; float:left; margin-right:10px" >
 <option value="" selected disabled hidden>==게시판선택==</option>
 <option value='q'>QnA</option>
 <option value='f'>자유게시판</option>
 </select>

 <input type="text" name="title" class="form-control" style="width:640px" value="제목을 입력하세요" onFocus="clearText(this)" onBlur="clearText(this)"/>
</div>
<div id="box-middle" style="margin-top:10px; width:900px;">
 
    <textarea name="contents" id="contents" style="width:800px; height: 400px;"></textarea>
    
    </div>
    <div id="box-bottom" style="margin-top:10px;">
  <div class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
    <input id="id" type="text" class="form-control" name="id" placeholder="id" style="width:100px;" />
  </div>
  <div class="input-group">
  	<div style="display:inline-block; height:34px;padding-top:10px">
	<b>공개여부</b>
	</div>
	<div style="display:inline-block; margin-left:20px">
    <label class="radio-inline" ><input type="radio" name="open_yn" value="Y" checked="checked" onClick="insertBoardFrm.password.disabled=true" style="marign-left:30px;" > Yes</label>
	<label class="radio-inline"><input type="radio" name="open_yn" value="N" onClick="insertBoardFrm.password.disabled=false">No</label>
    <input id="password" type="password" name="password" placeholder="Password" style="width:100px; float:right; margin-left:10px" disabled/>
	</div>
  </div>
  <br>
  <input type=reset name=re id="re" class="btn" value="초기화">
  <input type="button" id="insertBoard" class="btn" value="등록"/>
  <input type="button" class="btn" value="작성취소" onclick="Javascript:del();"/>
 
    </div>
  </div>
  </form>



</body>
</html>