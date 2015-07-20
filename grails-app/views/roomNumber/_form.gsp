<%@ page import="org.trust.RoomNumber" %>



<div class="fieldcontain ${hasErrors(bean: roomNumberInstance, field: 'room', 'error')} required">
	<label for="room">
		<g:message code="roomNumber.room.label" default="Room" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="room" required="" value="${roomNumberInstance?.room}"/>

</div>

