
<%@ page import="org.trust.Hosts" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'hosts.label', default: 'Hosts')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-hosts" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-hosts" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list hosts">
			
				<g:if test="${hostsInstance?.architecture}">
				<li class="fieldcontain">
					<span id="architecture-label" class="property-label"><g:message code="hosts.architecture.label" default="Architecture" /></span>
					
						<span class="property-value" aria-labelledby="architecture-label"><g:fieldValue bean="${hostsInstance}" field="architecture"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hostsInstance?.kernel}">
				<li class="fieldcontain">
					<span id="kernel-label" class="property-label"><g:message code="hosts.kernel.label" default="Kernel" /></span>
					
						<span class="property-value" aria-labelledby="kernel-label"><g:fieldValue bean="${hostsInstance}" field="kernel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hostsInstance?.blockdevice_sr0_size}">
				<li class="fieldcontain">
					<span id="blockdevice_sr0_size-label" class="property-label"><g:message code="hosts.blockdevice_sr0_size.label" default="Blockdevicesr0size" /></span>
					
						<span class="property-value" aria-labelledby="blockdevice_sr0_size-label"><g:fieldValue bean="${hostsInstance}" field="blockdevice_sr0_size"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hostsInstance?.blockdevice_sr0_vendor}">
				<li class="fieldcontain">
					<span id="blockdevice_sr0_vendor-label" class="property-label"><g:message code="hosts.blockdevice_sr0_vendor.label" default="Blockdevicesr0vendor" /></span>
					
						<span class="property-value" aria-labelledby="blockdevice_sr0_vendor-label"><g:fieldValue bean="${hostsInstance}" field="blockdevice_sr0_vendor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hostsInstance?.blockdevice_sr0_model}">
				<li class="fieldcontain">
					<span id="blockdevice_sr0_model-label" class="property-label"><g:message code="hosts.blockdevice_sr0_model.label" default="Blockdevicesr0model" /></span>
					
						<span class="property-value" aria-labelledby="blockdevice_sr0_model-label"><g:fieldValue bean="${hostsInstance}" field="blockdevice_sr0_model"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hostsInstance?.blockdevice_sda_size}">
				<li class="fieldcontain">
					<span id="blockdevice_sda_size-label" class="property-label"><g:message code="hosts.blockdevice_sda_size.label" default="Blockdevicesdasize" /></span>
					
						<span class="property-value" aria-labelledby="blockdevice_sda_size-label"><g:fieldValue bean="${hostsInstance}" field="blockdevice_sda_size"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hostsInstance?.blockdevice_sda_vendor}">
				<li class="fieldcontain">
					<span id="blockdevice_sda_vendor-label" class="property-label"><g:message code="hosts.blockdevice_sda_vendor.label" default="Blockdevicesdavendor" /></span>
					
						<span class="property-value" aria-labelledby="blockdevice_sda_vendor-label"><g:fieldValue bean="${hostsInstance}" field="blockdevice_sda_vendor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hostsInstance?.blockdevice_sda_model}">
				<li class="fieldcontain">
					<span id="blockdevice_sda_model-label" class="property-label"><g:message code="hosts.blockdevice_sda_model.label" default="Blockdevicesdamodel" /></span>
					
						<span class="property-value" aria-labelledby="blockdevice_sda_model-label"><g:fieldValue bean="${hostsInstance}" field="blockdevice_sda_model"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hostsInstance?.blockdevice_sdb_size}">
				<li class="fieldcontain">
					<span id="blockdevice_sdb_size-label" class="property-label"><g:message code="hosts.blockdevice_sdb_size.label" default="Blockdevicesdbsize" /></span>
					
						<span class="property-value" aria-labelledby="blockdevice_sdb_size-label"><g:fieldValue bean="${hostsInstance}" field="blockdevice_sdb_size"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hostsInstance?.blockdevice_sdb_vendor}">
				<li class="fieldcontain">
					<span id="blockdevice_sdb_vendor-label" class="property-label"><g:message code="hosts.blockdevice_sdb_vendor.label" default="Blockdevicesdbvendor" /></span>
					
						<span class="property-value" aria-labelledby="blockdevice_sdb_vendor-label"><g:fieldValue bean="${hostsInstance}" field="blockdevice_sdb_vendor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hostsInstance?.blockdevice_sdb_model}">
				<li class="fieldcontain">
					<span id="blockdevice_sdb_model-label" class="property-label"><g:message code="hosts.blockdevice_sdb_model.label" default="Blockdevicesdbmodel" /></span>
					
						<span class="property-value" aria-labelledby="blockdevice_sdb_model-label"><g:fieldValue bean="${hostsInstance}" field="blockdevice_sdb_model"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hostsInstance?.blockdevices}">
				<li class="fieldcontain">
					<span id="blockdevices-label" class="property-label"><g:message code="hosts.blockdevices.label" default="Blockdevices" /></span>
					
						<span class="property-value" aria-labelledby="blockdevices-label"><g:fieldValue bean="${hostsInstance}" field="blockdevices"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hostsInstance?.osfamily}">
				<li class="fieldcontain">
					<span id="osfamily-label" class="property-label"><g:message code="hosts.osfamily.label" default="Osfamily" /></span>
					
						<span class="property-value" aria-labelledby="osfamily-label"><g:fieldValue bean="${hostsInstance}" field="osfamily"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hostsInstance?.operatingsystem}">
				<li class="fieldcontain">
					<span id="operatingsystem-label" class="property-label"><g:message code="hosts.operatingsystem.label" default="Operatingsystem" /></span>
					
						<span class="property-value" aria-labelledby="operatingsystem-label"><g:fieldValue bean="${hostsInstance}" field="operatingsystem"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hostsInstance?.hardwareisa}">
				<li class="fieldcontain">
					<span id="hardwareisa-label" class="property-label"><g:message code="hosts.hardwareisa.label" default="Hardwareisa" /></span>
					
						<span class="property-value" aria-labelledby="hardwareisa-label"><g:fieldValue bean="${hostsInstance}" field="hardwareisa"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hostsInstance?.hardwaremodel}">
				<li class="fieldcontain">
					<span id="hardwaremodel-label" class="property-label"><g:message code="hosts.hardwaremodel.label" default="Hardwaremodel" /></span>
					
						<span class="property-value" aria-labelledby="hardwaremodel-label"><g:fieldValue bean="${hostsInstance}" field="hardwaremodel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hostsInstance?.macaddress_eth0}">
				<li class="fieldcontain">
					<span id="macaddress_eth0-label" class="property-label"><g:message code="hosts.macaddress_eth0.label" default="Macaddresseth0" /></span>
					
						<span class="property-value" aria-labelledby="macaddress_eth0-label"><g:fieldValue bean="${hostsInstance}" field="macaddress_eth0"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hostsInstance?.kernelmajversion}">
				<li class="fieldcontain">
					<span id="kernelmajversion-label" class="property-label"><g:message code="hosts.kernelmajversion.label" default="Kernelmajversion" /></span>
					
						<span class="property-value" aria-labelledby="kernelmajversion-label"><g:fieldValue bean="${hostsInstance}" field="kernelmajversion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hostsInstance?.kernelrelease}">
				<li class="fieldcontain">
					<span id="kernelrelease-label" class="property-label"><g:message code="hosts.kernelrelease.label" default="Kernelrelease" /></span>
					
						<span class="property-value" aria-labelledby="kernelrelease-label"><g:fieldValue bean="${hostsInstance}" field="kernelrelease"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hostsInstance?.kernelversion}">
				<li class="fieldcontain">
					<span id="kernelversion-label" class="property-label"><g:message code="hosts.kernelversion.label" default="Kernelversion" /></span>
					
						<span class="property-value" aria-labelledby="kernelversion-label"><g:fieldValue bean="${hostsInstance}" field="kernelversion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hostsInstance?.uuid}">
				<li class="fieldcontain">
					<span id="uuid-label" class="property-label"><g:message code="hosts.uuid.label" default="Uuid" /></span>
					
						<span class="property-value" aria-labelledby="uuid-label"><g:fieldValue bean="${hostsInstance}" field="uuid"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hostsInstance?.memorysize}">
				<li class="fieldcontain">
					<span id="memorysize-label" class="property-label"><g:message code="hosts.memorysize.label" default="Memorysize" /></span>
					
						<span class="property-value" aria-labelledby="memorysize-label"><g:fieldValue bean="${hostsInstance}" field="memorysize"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hostsInstance?.swapsize}">
				<li class="fieldcontain">
					<span id="swapsize-label" class="property-label"><g:message code="hosts.swapsize.label" default="Swapsize" /></span>
					
						<span class="property-value" aria-labelledby="swapsize-label"><g:fieldValue bean="${hostsInstance}" field="swapsize"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hostsInstance?.operatingsystemmajrelease}">
				<li class="fieldcontain">
					<span id="operatingsystemmajrelease-label" class="property-label"><g:message code="hosts.operatingsystemmajrelease.label" default="Operatingsystemmajrelease" /></span>
					
						<span class="property-value" aria-labelledby="operatingsystemmajrelease-label"><g:fieldValue bean="${hostsInstance}" field="operatingsystemmajrelease"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hostsInstance?.operatingsystemrelease}">
				<li class="fieldcontain">
					<span id="operatingsystemrelease-label" class="property-label"><g:message code="hosts.operatingsystemrelease.label" default="Operatingsystemrelease" /></span>
					
						<span class="property-value" aria-labelledby="operatingsystemrelease-label"><g:fieldValue bean="${hostsInstance}" field="operatingsystemrelease"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hostsInstance?.physicalprocessorcount}">
				<li class="fieldcontain">
					<span id="physicalprocessorcount-label" class="property-label"><g:message code="hosts.physicalprocessorcount.label" default="Physicalprocessorcount" /></span>
					
						<span class="property-value" aria-labelledby="physicalprocessorcount-label"><g:fieldValue bean="${hostsInstance}" field="physicalprocessorcount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hostsInstance?.processor0}">
				<li class="fieldcontain">
					<span id="processor0-label" class="property-label"><g:message code="hosts.processor0.label" default="Processor0" /></span>
					
						<span class="property-value" aria-labelledby="processor0-label"><g:fieldValue bean="${hostsInstance}" field="processor0"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hostsInstance?.processor1}">
				<li class="fieldcontain">
					<span id="processor1-label" class="property-label"><g:message code="hosts.processor1.label" default="Processor1" /></span>
					
						<span class="property-value" aria-labelledby="processor1-label"><g:fieldValue bean="${hostsInstance}" field="processor1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hostsInstance?.processorcount}">
				<li class="fieldcontain">
					<span id="processorcount-label" class="property-label"><g:message code="hosts.processorcount.label" default="Processorcount" /></span>
					
						<span class="property-value" aria-labelledby="processorcount-label"><g:fieldValue bean="${hostsInstance}" field="processorcount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hostsInstance?.timezone}">
				<li class="fieldcontain">
					<span id="timezone-label" class="property-label"><g:message code="hosts.timezone.label" default="Timezone" /></span>
					
						<span class="property-value" aria-labelledby="timezone-label"><g:fieldValue bean="${hostsInstance}" field="timezone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hostsInstance?.uniqueid}">
				<li class="fieldcontain">
					<span id="uniqueid-label" class="property-label"><g:message code="hosts.uniqueid.label" default="Uniqueid" /></span>
					
						<span class="property-value" aria-labelledby="uniqueid-label"><g:fieldValue bean="${hostsInstance}" field="uniqueid"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hostsInstance?.virtual}">
				<li class="fieldcontain">
					<span id="virtual-label" class="property-label"><g:message code="hosts.virtual.label" default="Virtual" /></span>
					
						<span class="property-value" aria-labelledby="virtual-label"><g:fieldValue bean="${hostsInstance}" field="virtual"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hostsInstance?.is_virtual}">
				<li class="fieldcontain">
					<span id="is_virtual-label" class="property-label"><g:message code="hosts.is_virtual.label" default="Isvirtual" /></span>
					
						<span class="property-value" aria-labelledby="is_virtual-label"><g:fieldValue bean="${hostsInstance}" field="is_virtual"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hostsInstance?.grid}">
				<li class="fieldcontain">
					<span id="grid-label" class="property-label"><g:message code="hosts.grid.label" default="Grid" /></span>
					
						<span class="property-value" aria-labelledby="grid-label"><g:link controller="gridLocation" action="show" id="${hostsInstance?.grid?.id}">${hostsInstance?.grid?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${hostsInstance?.hostname}">
				<li class="fieldcontain">
					<span id="hostname-label" class="property-label"><g:message code="hosts.hostname.label" default="Hostname" /></span>
					
						<span class="property-value" aria-labelledby="hostname-label"><g:fieldValue bean="${hostsInstance}" field="hostname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hostsInstance?.ipaddress}">
				<li class="fieldcontain">
					<span id="ipaddress-label" class="property-label"><g:message code="hosts.ipaddress.label" default="Ipaddress" /></span>
					
						<span class="property-value" aria-labelledby="ipaddress-label"><g:fieldValue bean="${hostsInstance}" field="ipaddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hostsInstance?.lifecycle}">
				<li class="fieldcontain">
					<span id="lifecycle-label" class="property-label"><g:message code="hosts.lifecycle.label" default="Lifecycle" /></span>
					
						<span class="property-value" aria-labelledby="lifecycle-label"><g:link controller="lifecycles" action="show" id="${hostsInstance?.lifecycle?.id}">${hostsInstance?.lifecycle?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${hostsInstance?.role}">
				<li class="fieldcontain">
					<span id="role-label" class="property-label"><g:message code="hosts.role.label" default="Role" /></span>
					
						<span class="property-value" aria-labelledby="role-label"><g:link controller="puppetRoles" action="show" id="${hostsInstance?.role?.id}">${hostsInstance?.role?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${hostsInstance?.room}">
				<li class="fieldcontain">
					<span id="room-label" class="property-label"><g:message code="hosts.room.label" default="Room" /></span>
					
						<span class="property-value" aria-labelledby="room-label"><g:link controller="roomNumber" action="show" id="${hostsInstance?.room?.id}">${hostsInstance?.room?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${hostsInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="hosts.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:link controller="people" action="show" id="${hostsInstance?.username?.id}">${hostsInstance?.username?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:hostsInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${hostsInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
