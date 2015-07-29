
<%@ page import="org.trust.Hosts" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'hosts.label', default: 'Hosts')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-hosts" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-hosts" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
	    <table>
		<thead>
			<tr>
			<g:sortableColumn property="hostname" title="Host Name"/>
			<g:sortableColumn property="ipaddress" title="IP Address"/>
			<g:sortableColumn property="username" title="Point Of Contact"/>
			</tr>
		</thead>
		<tbody>
		<g:each in="${hostsInstanceList}" status="i" var="host">
			<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
				<td>
					<g:link action="show" id="${host.id}">${host.hostname }</g:link>
				</td>
				<td>
					${host.ipaddress}
				</td>
				<td>
					${host.username}
				</td>
			</tr>
		</g:each>
      
		</tbody>
      
	</table>
			<div class="pagination">
				<g:paginate total="${hostsInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
