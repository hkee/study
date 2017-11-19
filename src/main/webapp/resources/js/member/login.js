function login()
{
	//alert("회원가입");
	if($("#id").val() == ""){
		alert("아이디를 입력해주세요.");
		$("#id").focus();
		return;
	}
	
	if($("#password").val() == ""){
		alert("비밀번호를 입력해주세요.");
		$("#password").focus();
		return;
	}
	ajax_login();
}

function ajax_login() 
{ 
	
	var id = $("#id").val();
	var password = $("#password").val();
    var data = { id : id, password:password };
        
    $.ajax({
		url: "/member/loginProc",
		data:JSON.stringify(data),
		type:"POST",
		async : "false",
		dataType:"text",
		contentType:"application/json; charset=UTF-8",
		success:function(result){
			console.log("result : " + result);
			if(result == "success") {
				//alert( "로그인 성공: ");
				location.href="/member/mypage"
			} 
			else if(result == "nodata"){
				alert( "아이디와 비밀번호를 다시 입력해주세요." );
			}
			else 
			{
				alert( "네트워크 오류입니다." );
			}
		},
		error:function(request,status,error){
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		},
		
	});
    
}