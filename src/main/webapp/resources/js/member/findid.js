var idCheck = false;

function findid()
{
	if($("#name").val() == ""){
		alert("이름을 입력해주세요.");
		$("#name").focus();
		return;
	}
	
	if($("#email").val() == ""){
		alert("이메일을 입력해주세요.");
		$("#email").focus();
		return;
	}
	
	ajax_Check();
}

function ajax_Check() 
{ 
	
	var name = $("#name").val();
	var email = $("#email").val();
    var data = { name : name , email : email};
        //alert($("#email").val());
    $.ajax({
		url: "/member/findIDProc",
		data:JSON.stringify(data),
		type:"POST",
		async : "false",
		dataType:"text",
		contentType:"application/json; charset=UTF-8",
		success:function(result){
			console.log("result : " + result);
			if(result == "success") {
				$("#searchIDresult").css("display","block");
				$("#searchID").html(result.id);
				//alert( "회원 정보가 없습니다.");
			} 
			else if(result == "noUsingId"){
				idCheck = false;
				alert( "회원 정보가 없습니다." );
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
