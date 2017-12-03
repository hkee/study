<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>
<link rel="stylesheet" type="text/css"
	href="/static/css/full-calendar.css">
<link rel="stylesheet" type="text/css"
	href="/static/css/calendar-custom.css">
<link
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i"
	rel="stylesheet">
<%@include file="../include/nav.jsp"%>

</head>
<body>
	<div id='wrap'>

		<div id='calendar'></div>

		<div style='clear: both'></div>
	</div>

	<script src="<c:url value="/static/js/calendar-custom.js" />"></script>
	<script>
	var list = new Array(); 
		var calendar = $('#calendar').fullCalendar(
				{
					header : {
						left : 'title',
						center : 'agendaDay,agendaWeek,month',
						right : 'prev,next today'
					},
					editable : true,
					firstDay : 1, //  1(Monday) this can be changed to 0(Sunday) for the USA system
					selectable : true,
					defaultView : 'month',
					axisFormat : 'h:mm',
					columnFormat : {
						month : 'ddd', // Mon
						week : 'ddd d', // Mon 7
						day : 'dddd M/d', // Monday 9/7
						agendaDay : 'dddd d'
					},
					titleFormat : {
						month : 'MMMM yyyy', // September 2009
						week : "MMMM yyyy", // September 2009
						day : 'MMMM yyyy' // Tuesday, Sep 8, 2009
					},
					allDaySlot : false,
					selectHelper : true,
					droppable : true, // this allows things to be dropped onto the calendar !!!
					drop : function(date, allDay) { // this function is called when something is dropped

						// retrieve the dropped element's stored Event Object
						var originalEventObject = $(this).data('eventObject');

						// we need to copy it, so that multiple events don't have a reference to the same object
						var copiedEventObject = $.extend({},
								originalEventObject);

						// assign it the date that was reported
						copiedEventObject.start = date;
						copiedEventObject.allDay = allDay;

						// render the event on the calendar
						// the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
						$('#calendar').fullCalendar('renderEvent',
								copiedEventObject, true);

						// is the "remove after drop" checkbox checked?
						if ($('#drop-remove').is(':checked')) {
							// if so, remove the element from the "Draggable Events" list
							$(this).remove();
						}
					},
					events : [
						<c:forEach items="${list}" var="item" varStatus="status">
						{
							title : '${item.room_seq}번방, ${item.id}님 예약 (총 ${item.nmpr}명)',
							start : new Date("${item.resveDate}".replace("KST ", "")),
							end : new Date("${item.endDate}".replace("KST ", "")),
							allDay : false,
							className : 'important'
						},
						</c:forEach>
					],
				});
	</script>
</body>
</html>

<%@include file="../include/footer.jsp"%>