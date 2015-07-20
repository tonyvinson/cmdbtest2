
<%@ page import="org.trust.People" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'people.label', default: 'People')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-people" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-people" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="firstName" title="${message(code: 'people.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'people.lastName.label', default: 'Last Name')}" />
					
						<g:sortableColumn property="mission" title="${message(code: 'people.mission.label', default: 'Mission')}" />
					
						<g:sortableColumn property="uid" title="${message(code: 'people.uid.label', default: 'Uid')}" />
					
						<g:sortableColumn property="username" title="${message(code: 'people.username.label', default: 'Username')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${peopleInstanceList}" status="i" var="peopleInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${peopleInstance.id}">${fieldValue(bean: peopleInstance, field: "firstName")}</g:link></td>
					
						<td>${fieldValue(bean: peopleInstance, field: "lastName")}</td>
					
						<td>${fieldValue(bean: peopleInstance, field: "mission")}</td>
					
						<td>${fieldValue(bean: peopleInstance, field: "uid")}</td>
					
						<td>${fieldValue(bean: peopleInstance, field: "username")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${peopleInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
