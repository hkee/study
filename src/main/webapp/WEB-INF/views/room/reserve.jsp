<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>
<%@include file="../include/nav.jsp"%>
<main>
<div class="container">
	<h2>방 예약</h2>
	<form class="form-horizontal" action="/room/reserveAction" method="POST">
		<div class="form-group">
			<label class="control-label col-sm-2" for="email">방 번호:</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" id="room_number" value="${seq}"
					placeholder="방 번호를 입력하세요" name="room_number" readonly/>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="user_name">이름:</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" id="user_name"
					placeholder="이름을 입력하세요" name="user_name" data-validation="required"
                            data-validation-error-msg="이름을 입력해주세요."
                            data-validation-error-msg-container="#required-name">                     
                 <span id="required-name" class="error-dialog"></span>
			</div>
		</div>		
		<div class="form-group">
			<label class="control-label col-sm-2" for="phone">전화번호:</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="phone"
					placeholder="전화번호를 입력하세요" name="phone" data-validation="required"
                            data-validation-error-msg="전화번호를 입력해주세요."
                            data-validation-error-msg-container="#required-phone">                     
                 <span id="required-phone" class="error-dialog"></span>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="datepicker">날짜선택:</label>
			<div class="col-sm-2">
				<input type="text" id="datepicker" class="form-control"
					id="datepicker" name="date" data-validation="required"
                            data-validation-error-msg="날짜를 선택해주세요."
                            data-validation-error-msg-container="#required-date">                     
                 <span id="required-date" class="error-dialog"></span>
			</div>
			
			<label class="control-label col-sm-2" for="select-time">시간 선택 :</label> 
			<div class="col-sm-6">
				<select class="form-control" id="select-time" name="reserve_time" >
					<option value = "09:00:00">09:00 ~ 11:50 (1타임)</option>
					<option value = "12:00:00">12:00 ~ 14:50 (2타임)</option>
					<option value = "15:00:00">15:00 ~ 17:50 (3타임)</option>
					<option value = "18:00:00">18:00 ~ 20:50 (4타임)</option>
					<option value = "21:00:00">21:00 ~ 23:50 (5타임)</option>				
				</select>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="person">인원 :</label>
			<div class="col-sm-2">
				<input type="number" min="${min}" max="${max}" class="form-control" id="person"
					placeholder="인원수" name="person" data-validation="required"
                            data-validation-error-msg="인원을 정해주세요."
                            data-validation-error-msg-container="#required-person">                     
                 <span id="required-person" class="error-dialog"></span>
			</div>
			<label class="control-label col-sm-2" for="price">가격:</label>
			<div class="col-sm-2">
				<input  type="text" class="form-control" id="price"
					placeholder="가격" name="price" readonly>
			</div>
		</div>			
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<div class="checkbox">
					<label>
						<input type="checkbox" id="personal" name="personal">예약 시 정보 제공 동의
					</label>
				</div>
			</div>			
		</div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-4">
				<button id="submit" type="submit" class="btn btn-success">Submit</button>
					<button type="button" class="btn btn-default">Reset</button>
			</div>
		</div>
	</form>
</div>
</main>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/jquery.form-validator.min.js"></script>
<script>


    
	$.validate({
	    lang: 'en'
	  });
	$("#submit").click(function() {
		if ($("#personal").prop("checked") === false) {
			alert("정보 제공 동의를 체크하여 주세요");
			return false;
		}
	});

	
	$("#datepicker").datepicker({
		dateFormat: "yy-mm-dd",  
		onSelect : function(dateText) {
		},
		beforeShowDay: noMondays
	});
	
	function noMondays(date) { 
		return [date.getDay() != 0, null]; 
	} 

	$('#person').change(function() {
		var $person = $('#person');
		var $price = $person.val() * 4000;
		$('#price').val(numberWithCommas($price)+'원');
	});
	
	function numberWithCommas(x) {
	    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}
</script>

<%@include file="../include/footer.jsp"%>