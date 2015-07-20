<%@ page import="org.trust.People" %>



<div class="fieldcontain ${hasErrors(bean: peopleInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="people.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${peopleInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: peopleInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="people.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${peopleInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: peopleInstance, field: 'mission', 'error')} required">
	<label for="mission">
		<g:message code="people.mission.label" default="Mission" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="mission" required="" value="${peopleInstance?.mission}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: peopleInstance, field: 'uid', 'error')} required">
	<label for="uid">
		<g:message code="people.uid.label" default="Uid" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="uid" required="" value="${peopleInstance?.uid}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: peopleInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="people.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${peopleInstance?.username}"/>

</div>

