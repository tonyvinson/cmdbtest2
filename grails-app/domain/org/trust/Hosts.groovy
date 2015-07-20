package org.trust

class Hosts {

	String hostname
	String ipaddress
	PuppetRoles role
	RoomNumber room
	GridLocation grid
	Lifecycles lifecycle
	People username
	String architecture
	String kernel
	String blockdevice_sr0_size
	String blockdevice_sr0_vendor
	String blockdevice_sr0_model
	String blockdevice_sda_size
	String blockdevice_sda_vendor
	String blockdevice_sda_model
	String blockdevice_sdb_size
	String blockdevice_sdb_vendor
	String blockdevice_sdb_model
	String blockdevices
	String osfamily
	String operatingsystem
	String hardwareisa
	String hardwaremodel
	String macaddress_eth0
	String kernelmajversion
	String kernelrelease
	String kernelversion
	String uuid
	String memorysize
	String swapsize
	String operatingsystemmajrelease
	String operatingsystemrelease
	String physicalprocessorcount
	String processor0
	String processor1
	String processorcount
	String timezone
	String uniqueid
	String virtual
	String is_virtual
    static constraints = {
	architecture(nullable:true) 
	kernel(nullable:true) 
	blockdevice_sr0_size(nullable:true) 
	blockdevice_sr0_vendor(nullable:true) 
	blockdevice_sr0_model(nullable:true) 
	blockdevice_sda_size(nullable:true) 
	blockdevice_sda_vendor(nullable:true) 
	blockdevice_sda_model(nullable:true) 
	blockdevice_sdb_size(nullable:true) 
	blockdevice_sdb_vendor(nullable:true) 
	blockdevice_sdb_model(nullable:true) 
	blockdevices(nullable:true) 
	osfamily(nullable:true) 
	operatingsystem(nullable:true) 
	hardwareisa(nullable:true) 
	hardwaremodel(nullable:true) 
	macaddress_eth0(nullable:true) 
	kernelmajversion(nullable:true) 
	kernelrelease(nullable:true) 
	kernelversion(nullable:true) 
	uuid(nullable:true) 
	memorysize(nullable:true) 
	swapsize(nullable:true) 
	operatingsystemmajrelease(nullable:true) 
	operatingsystemrelease(nullable:true) 
	physicalprocessorcount(nullable:true) 
	processor0(nullable:true) 
	processor1(nullable:true) 
	processorcount(nullable:true) 
	timezone(nullable:true) 
	uniqueid(nullable:true) 
	virtual(nullable:true) 
	is_virtual(nullable:true) 
    }

 String toString() {
        return hostname
    }
}
