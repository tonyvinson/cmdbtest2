<%@ page import="org.trust.Hosts" %>



<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'architecture', 'error')} ">
	<label for="architecture">
		<g:message code="hosts.architecture.label" default="Architecture" />
		
	</label>
	<g:textField name="architecture" value="${hostsInstance?.architecture}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'kernel', 'error')} ">
	<label for="kernel">
		<g:message code="hosts.kernel.label" default="Kernel" />
		
	</label>
	<g:textField name="kernel" value="${hostsInstance?.kernel}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'blockdevice_sr0_size', 'error')} ">
	<label for="blockdevice_sr0_size">
		<g:message code="hosts.blockdevice_sr0_size.label" default="Blockdevicesr0size" />
		
	</label>
	<g:textField name="blockdevice_sr0_size" value="${hostsInstance?.blockdevice_sr0_size}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'blockdevice_sr0_vendor', 'error')} ">
	<label for="blockdevice_sr0_vendor">
		<g:message code="hosts.blockdevice_sr0_vendor.label" default="Blockdevicesr0vendor" />
		
	</label>
	<g:textField name="blockdevice_sr0_vendor" value="${hostsInstance?.blockdevice_sr0_vendor}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'blockdevice_sr0_model', 'error')} ">
	<label for="blockdevice_sr0_model">
		<g:message code="hosts.blockdevice_sr0_model.label" default="Blockdevicesr0model" />
		
	</label>
	<g:textField name="blockdevice_sr0_model" value="${hostsInstance?.blockdevice_sr0_model}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'blockdevice_sda_size', 'error')} ">
	<label for="blockdevice_sda_size">
		<g:message code="hosts.blockdevice_sda_size.label" default="Blockdevicesdasize" />
		
	</label>
	<g:textField name="blockdevice_sda_size" value="${hostsInstance?.blockdevice_sda_size}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'blockdevice_sda_vendor', 'error')} ">
	<label for="blockdevice_sda_vendor">
		<g:message code="hosts.blockdevice_sda_vendor.label" default="Blockdevicesdavendor" />
		
	</label>
	<g:textField name="blockdevice_sda_vendor" value="${hostsInstance?.blockdevice_sda_vendor}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'blockdevice_sda_model', 'error')} ">
	<label for="blockdevice_sda_model">
		<g:message code="hosts.blockdevice_sda_model.label" default="Blockdevicesdamodel" />
		
	</label>
	<g:textField name="blockdevice_sda_model" value="${hostsInstance?.blockdevice_sda_model}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'blockdevice_sdb_size', 'error')} ">
	<label for="blockdevice_sdb_size">
		<g:message code="hosts.blockdevice_sdb_size.label" default="Blockdevicesdbsize" />
		
	</label>
	<g:textField name="blockdevice_sdb_size" value="${hostsInstance?.blockdevice_sdb_size}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'blockdevice_sdb_vendor', 'error')} ">
	<label for="blockdevice_sdb_vendor">
		<g:message code="hosts.blockdevice_sdb_vendor.label" default="Blockdevicesdbvendor" />
		
	</label>
	<g:textField name="blockdevice_sdb_vendor" value="${hostsInstance?.blockdevice_sdb_vendor}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'blockdevice_sdb_model', 'error')} ">
	<label for="blockdevice_sdb_model">
		<g:message code="hosts.blockdevice_sdb_model.label" default="Blockdevicesdbmodel" />
		
	</label>
	<g:textField name="blockdevice_sdb_model" value="${hostsInstance?.blockdevice_sdb_model}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'blockdevices', 'error')} ">
	<label for="blockdevices">
		<g:message code="hosts.blockdevices.label" default="Blockdevices" />
		
	</label>
	<g:textField name="blockdevices" value="${hostsInstance?.blockdevices}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'osfamily', 'error')} ">
	<label for="osfamily">
		<g:message code="hosts.osfamily.label" default="Osfamily" />
		
	</label>
	<g:textField name="osfamily" value="${hostsInstance?.osfamily}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'operatingsystem', 'error')} ">
	<label for="operatingsystem">
		<g:message code="hosts.operatingsystem.label" default="Operatingsystem" />
		
	</label>
	<g:textField name="operatingsystem" value="${hostsInstance?.operatingsystem}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'hardwareisa', 'error')} ">
	<label for="hardwareisa">
		<g:message code="hosts.hardwareisa.label" default="Hardwareisa" />
		
	</label>
	<g:textField name="hardwareisa" value="${hostsInstance?.hardwareisa}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'hardwaremodel', 'error')} ">
	<label for="hardwaremodel">
		<g:message code="hosts.hardwaremodel.label" default="Hardwaremodel" />
		
	</label>
	<g:textField name="hardwaremodel" value="${hostsInstance?.hardwaremodel}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'macaddress_eth0', 'error')} ">
	<label for="macaddress_eth0">
		<g:message code="hosts.macaddress_eth0.label" default="Macaddresseth0" />
		
	</label>
	<g:textField name="macaddress_eth0" value="${hostsInstance?.macaddress_eth0}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'kernelmajversion', 'error')} ">
	<label for="kernelmajversion">
		<g:message code="hosts.kernelmajversion.label" default="Kernelmajversion" />
		
	</label>
	<g:textField name="kernelmajversion" value="${hostsInstance?.kernelmajversion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'kernelrelease', 'error')} ">
	<label for="kernelrelease">
		<g:message code="hosts.kernelrelease.label" default="Kernelrelease" />
		
	</label>
	<g:textField name="kernelrelease" value="${hostsInstance?.kernelrelease}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'kernelversion', 'error')} ">
	<label for="kernelversion">
		<g:message code="hosts.kernelversion.label" default="Kernelversion" />
		
	</label>
	<g:textField name="kernelversion" value="${hostsInstance?.kernelversion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'uuid', 'error')} ">
	<label for="uuid">
		<g:message code="hosts.uuid.label" default="Uuid" />
		
	</label>
	<g:textField name="uuid" value="${hostsInstance?.uuid}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'memorysize', 'error')} ">
	<label for="memorysize">
		<g:message code="hosts.memorysize.label" default="Memorysize" />
		
	</label>
	<g:textField name="memorysize" value="${hostsInstance?.memorysize}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'swapsize', 'error')} ">
	<label for="swapsize">
		<g:message code="hosts.swapsize.label" default="Swapsize" />
		
	</label>
	<g:textField name="swapsize" value="${hostsInstance?.swapsize}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'operatingsystemmajrelease', 'error')} ">
	<label for="operatingsystemmajrelease">
		<g:message code="hosts.operatingsystemmajrelease.label" default="Operatingsystemmajrelease" />
		
	</label>
	<g:textField name="operatingsystemmajrelease" value="${hostsInstance?.operatingsystemmajrelease}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'operatingsystemrelease', 'error')} ">
	<label for="operatingsystemrelease">
		<g:message code="hosts.operatingsystemrelease.label" default="Operatingsystemrelease" />
		
	</label>
	<g:textField name="operatingsystemrelease" value="${hostsInstance?.operatingsystemrelease}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'physicalprocessorcount', 'error')} ">
	<label for="physicalprocessorcount">
		<g:message code="hosts.physicalprocessorcount.label" default="Physicalprocessorcount" />
		
	</label>
	<g:textField name="physicalprocessorcount" value="${hostsInstance?.physicalprocessorcount}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'processor0', 'error')} ">
	<label for="processor0">
		<g:message code="hosts.processor0.label" default="Processor0" />
		
	</label>
	<g:textField name="processor0" value="${hostsInstance?.processor0}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'processor1', 'error')} ">
	<label for="processor1">
		<g:message code="hosts.processor1.label" default="Processor1" />
		
	</label>
	<g:textField name="processor1" value="${hostsInstance?.processor1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'processorcount', 'error')} ">
	<label for="processorcount">
		<g:message code="hosts.processorcount.label" default="Processorcount" />
		
	</label>
	<g:textField name="processorcount" value="${hostsInstance?.processorcount}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'timezone', 'error')} ">
	<label for="timezone">
		<g:message code="hosts.timezone.label" default="Timezone" />
		
	</label>
	<g:textField name="timezone" value="${hostsInstance?.timezone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'uniqueid', 'error')} ">
	<label for="uniqueid">
		<g:message code="hosts.uniqueid.label" default="Uniqueid" />
		
	</label>
	<g:textField name="uniqueid" value="${hostsInstance?.uniqueid}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'virtual', 'error')} ">
	<label for="virtual">
		<g:message code="hosts.virtual.label" default="Virtual" />
		
	</label>
	<g:textField name="virtual" value="${hostsInstance?.virtual}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'is_virtual', 'error')} ">
	<label for="is_virtual">
		<g:message code="hosts.is_virtual.label" default="Isvirtual" />
		
	</label>
	<g:textField name="is_virtual" value="${hostsInstance?.is_virtual}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'grid', 'error')} required">
	<label for="grid">
		<g:message code="hosts.grid.label" default="Grid" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="grid" name="grid.id" from="${org.trust.GridLocation.list()}" optionKey="id" required="" value="${hostsInstance?.grid?.id}" class="many-to-one"/>

</div>

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

<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'room', 'error')} required">
	<label for="room">
		<g:message code="hosts.room.label" default="Room" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="room" name="room.id" from="${org.trust.RoomNumber.list()}" optionKey="id" required="" value="${hostsInstance?.room?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hostsInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="hosts.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="username" name="username.id" from="${org.trust.People.list()}" optionKey="id" required="" value="${hostsInstance?.username?.id}" class="many-to-one"/>

</div>

