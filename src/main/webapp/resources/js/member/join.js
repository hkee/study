var idCheck = false;

function idcheck()
{
	if($("#id").val() == ""){
		alert("아이디를 입력해주세요.");
		$("#id").focus();
		return;
	}
	
	ajax_idCheck();
}

function ajax_idCheck() 
{ 
	
	var id = $("#id").val();
    var data = { id : id };
        
    $.ajax({
		url: "/member/idCheck",
		data:JSON.stringify(data),
		type:"POST",
		async : "false",
		dataType:"text",
		contentType:"application/json; charset=UTF-8",
		success:function(result){
			console.log("result : " + result);
			if(result == "success") {
				alert( "사용 가능한 아이디 입니다.");
				idCheck = true;
				//location.href="/member/mypage"
			} 
			else if(result == "usingid"){
				idCheck = false;
				alert( "존재하는 아이디입니다." );
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

function join()
{
	//alert("회원가입");
	if($("#id").val() == ""){
		alert("아이디를 입력해주세요.");
		$("#id").focus();
		return;
	}
	
	if (!idCheck){
		alert("아이디 중복체크를 해주세요.");
		return;
	}
	
	if($("#pwd").val() == ""){
		alert("비밀번호를 입력해주세요.");
		$("#pwd").focus();
		return;
	}
	
	if($("#pwd1").val() == ""){
		alert("비밀번호를 재입력 해주세요.");
		$("#pwd1").focus();
		return;
	}
	
	if($("#pwd").val() != $("#pwd1").val()){
		alert("비밀번호가 일치하지 않습니다.");
		$("#pwd1").focus();
		return;
	}
	
	if($("#name").val() == ""){
		alert("이름을 입력해주세요.");
		$("#name").focus();
		return;
	}
	
	if($("#email").val() == ""){
		alert("이메일 주소를 입력해주세요.");
		$("#email").focus();
		return;
	}
	ajax_join();
}

function ajax_join() 
{ 	        
	var params = $("#fJoin").serialize();
	var id =  $("#id").val();
	var password =  $("#pwd1").val();
	var name =  $("#name").val();
	var email =  $("#email").val();
	
	 var data = { id : id , name : name ,  email : email , password:password };
	 console.log(data);
    $.ajax({
		url: "/member/joinProc",
		data:JSON.stringify(data),
		type:"POST",
		async : "false",
		dataType:"text",
		contentType:"application/json; charset=UTF-8",
		success:function(result){
			console.log("result : " + result);
			if(result == "success") {
				alert( "회원가입 되셨습니다.");
				location.href="/member/login"
			} 
			else if(result == "notjoin"){
				alert( "회원가입에 실패했습니다." );
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