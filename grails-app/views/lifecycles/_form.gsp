<%@ page import="org.trust.Lifecycles" %>



<div class="fieldcontain ${hasErrors(bean: lifecyclesInstance, field: 'lifecycle', 'error')} required">
	<label for="lifecycle">
		<g:message code="lifecycles.lifecycle.label" default="Lifecycle" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lifecycle" required="" value="${lifecyclesInstance?.lifecycle}"/>

</div>

