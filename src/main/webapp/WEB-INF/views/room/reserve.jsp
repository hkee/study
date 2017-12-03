<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>
<%@include file="../include/nav.jsp"%>
<main>
<div class="container">
	<h2>방 예약</h2>
	<form class="form-horizontal" action="#">
		<div class="form-group">
			<label class="control-label col-sm-2" for="user_name">이름:</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="user_name"
					placeholder="이름을 입력하세요" name="user_name">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="email">방 번호:</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="room_number"
					placeholder="방 번호를 입력하세요" name="room_number">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="phone">전화번호:</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="phone"
					placeholder="전화번호를 입력하세요" name="phone">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="datepicker">날짜선택:</label>
			<div class="col-sm-2">
				<input type="text" id="datepicker" class="form-control"
					id="datepicker" name="date">
			</div>
			
			<label class="control-label col-sm-2" for="select-time">시간 선택 :</label> 
			<div class="col-sm-6">
				<select class="form-control" id="select-time">
					<option value = "09:00">09:00 ~ 11:50 (1타임)</option>
					<option value = "12:00">12:00 ~ 14:50 (2타임)</option>
					<option value = "15:00">15:00 ~ 17:50 (3타임)</option>
					<option value = "18:00">18:00 ~ 20:50 (4타임)</option>
					<option value = "21:00">21:00 ~ 23:50 (5타임)</option>				
				</select>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="person">인원 :</label>
			<div class="col-sm-2">
				<input type="number" min="3" max="6" class="form-control" id="person"
					placeholder="인원수" name="person">
			</div>
			<label class="control-label col-sm-2" for="price">가격:</label>
			<div class="col-sm-2">
				<input  type="text" class="form-control" id="price"
					placeholder="가격" name="room_number" readonly>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="email">방 번호:</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="room_number"
					placeholder="방 번호를 입력하세요" name="room_number">
			</div>
		</div>
		
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<div class="checkbox">
					<label><input type="checkbox" name="remember">
						예약 시 정보 제공 동의</label>
				</div>
			</div>
			
		</div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="submit" class="btn btn-default">Submit</button>
			</div>
		</div>
	</form>
</div>
</main>
<script>
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