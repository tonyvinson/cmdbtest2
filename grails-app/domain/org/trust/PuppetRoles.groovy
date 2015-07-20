package org.trust

class PuppetRoles {

    static constraints = {
	hosts blank: true, nullable: true
    }
	String name
	String description
	static hasMany = [hosts: Hosts]
 String toString() {
        return name
    }
}
