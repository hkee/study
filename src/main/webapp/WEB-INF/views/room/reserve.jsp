<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>
<%@include file="../include/nav.jsp"%>
<main>
<div class="container">
	<h2>Horizontal form</h2>
	<form class="form-horizontal" action="#">
		<div class="form-group">
			<label class="control-label col-sm-2" for="email">아이디:</label>
			<div class="col-sm-10">
				<input type="id" class="form-control" id="id"
					placeholder="Enter Id" name="id">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="email">방 번호:</label>
			<div class="col-sm-10">
				<input type="room_number" class="form-control" id="room_number"
					placeholder="Enter Room Number" name="room_number">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="email">Email:</label>
			<div class="col-sm-10">
				<input type="email" class="form-control" id="email"
					placeholder="Enter email" name="email">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="pwd">Password:</label>
			<div class="col-sm-10">
				<input type="password" class="form-control" id="pwd"
					placeholder="Enter password" name="pwd">
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<div class="checkbox">
					<label><input type="checkbox" name="remember">
						Remember me</label>
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
<%@include file="../include/footer.jsp"%>