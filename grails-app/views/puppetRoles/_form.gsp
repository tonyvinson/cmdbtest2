<%@ page import="org.trust.PuppetRoles" %>



<div class="fieldcontain ${hasErrors(bean: puppetRolesInstance, field: 'hosts', 'error')} ">
	<label for="hosts">
		<g:message code="puppetRoles.hosts.label" default="Hosts" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${puppetRolesInstance?.hosts?}" var="h">
    <li><g:link controller="hosts" action="show" id="${h.id}">${h?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="hosts" action="create" params="['puppetRoles.id': puppetRolesInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'hosts.label', default: 'Hosts')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: puppetRolesInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="puppetRoles.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${puppetRolesInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: puppetRolesInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="puppetRoles.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${puppetRolesInstance?.name}"/>

</div>

