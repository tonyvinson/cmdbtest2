<%@ page import="org.trust.GridLocation" %>



<div class="fieldcontain ${hasErrors(bean: gridLocationInstance, field: 'floortile', 'error')} required">
	<label for="floortile">
		<g:message code="gridLocation.floortile.label" default="Floortile" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="floortile" required="" value="${gridLocationInstance?.floortile}"/>

</div>

