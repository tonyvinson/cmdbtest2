<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'hosts.label', default: 'Hosts')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-hosts" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="create-hosts" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.hosts}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.hosts}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form action="save">
                <fieldset class="form">
		<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'hostname', 'error')} required">
			<label for="hostname">
				<g:message code="hosts.hostname.label" default="Hostname" />
				<span class="required-indicator">*</span>
			</label>
			<g:textField name="hostname" required="" value="${hostsInstance?.hostname}"/>

		</div>

		<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'ipaddress', 'error')} required">
			<label for="ipaddress">
				<g:message code="hosts.ipaddress.label" default="Ipaddress" />
				<span class="required-indicator">*</span>
			</label>
			<g:textField name="ipaddress" required="" value="${hostsInstance?.ipaddress}"/>

		</div>
		<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'lifecycle', 'error')} required">
			<label for="lifecycle">
				<g:message code="hosts.lifecycle.label" default="Lifecycle" />
				<span class="required-indicator">*</span>
			</label>
			<g:select id="lifecycle" name="lifecycle.id" from="${org.trust.Lifecycles.list()}" optionKey="id" required="" value="${hostsInstance?.lifecycle?.id}" class="many-to-one"/>

		</div>

		<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'role', 'error')} required">
			<label for="role">
				<g:message code="hosts.role.label" default="Role" />
				<span class="required-indicator">*</span>
			</label>
			<g:select id="role" name="role.id" from="${org.trust.PuppetRoles.list()}" optionKey="id" required="" value="${hostsInstance?.role?.id}" class="many-to-one"/>

		</div>


		<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'username', 'error')} required">
			<label for="username">
				<g:message code="hosts.username.label" default="Username" />
				<span class="required-indicator">*</span>
			</label>
			<g:select id="username" name="username.id" from="${org.trust.People.list()}" optionKey="id" required="" value="${hostsInstance?.username?.id}" class="many-to-one"/>

		</div>
		<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'room', 'error')} required">
			<label for="room">
				<g:message code="hosts.room.label" default="Room" />
				<span class="required-indicator">*</span>
			</label>
			<g:select id="room" name="room.id" from="${org.trust.RoomNumber.list()}" optionKey="id" required="" value="${hostsInstance?.room?.id}" class="many-to-one"/>
		</div>
		<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'grid', 'error')} required">
			<label for="grid">
				<g:message code="hosts.grid.label" default="Grid" />
				<span class="required-indicator">*</span>
			</label>
			<g:select id="grid" name="grid.id" from="${org.trust.GridLocation.list()}" optionKey="id" required="" value="${hostsInstance?.grid?.id}" class="many-to-one"/>

		</div>

                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
