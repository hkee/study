<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>
<%@include file="../include/nav.jsp"%>
<main>
<div class="container">

	<table class="table">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>최소인원</th>
				<th>최대인원</th>
				<th>가격 (1인)</th>
				<th>방 정보</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="room" varStatus="status">
				<tr data-toggle="modal" data-target="room${room.room_seq}">
					<td>${status.count}</td>
					<td>${room.name}</td>
					<td>${room.nmpr_min}명</td>
					<td>${room.nmpr_max}명</td>
					<td>${room.price}원</td>
					<td><button type="button" class="btn btn-info" data-toggle="modal" data-target="#room${room.room_seq}">상세보기</button></td>
				</tr>

				<div class="modal fade" id="room${room.room_seq}" role="dialog">
					<div class="modal-dialog">
						<!-- Modal content-->
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								<h4 class="modal-title">방 : ${room.name}</h4>
							</div>
							<div class="modal-body">
								<p>${room.memo }</p>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-success"
									data-dismiss="modal">예약하기</button>
								<button type="button" class="btn btn-default"
									data-dismiss="modal">닫기</button>
							</div>
						</div>
					</div>
				</div>	
			</c:forEach>
		</tbody>
	</table>
	
</div>
</main>
<%@include file="../include/footer.jsp"%>