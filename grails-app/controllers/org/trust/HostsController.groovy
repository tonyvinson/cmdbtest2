package org.trust



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class HostsController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Hosts.list(params), model:[hostsInstanceCount: Hosts.count()]
    }

    def show(Hosts hostsInstance) {
        respond hostsInstance
    }

    def create() {
        respond new Hosts(params)
    }

    @Transactional
    def save(Hosts hostsInstance) {
        if (hostsInstance == null) {
            notFound()
            return
        }

        if (hostsInstance.hasErrors()) {
            respond hostsInstance.errors, view:'create'
            return
        }

        hostsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'hosts.label', default: 'Hosts'), hostsInstance.id])
                redirect hostsInstance
            }
            '*' { respond hostsInstance, [status: CREATED] }
        }
    }

    def edit(Hosts hostsInstance) {
        respond hostsInstance
    }

    @Transactional
    def update(Hosts hostsInstance) {
        if (hostsInstance == null) {
            notFound()
            return
        }

        if (hostsInstance.hasErrors()) {
            respond hostsInstance.errors, view:'edit'
            return
        }

        hostsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Hosts.label', default: 'Hosts'), hostsInstance.id])
                redirect hostsInstance
            }
            '*'{ respond hostsInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Hosts hostsInstance) {

        if (hostsInstance == null) {
            notFound()
            return
        }

        hostsInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Hosts.label', default: 'Hosts'), hostsInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'hosts.label', default: 'Hosts'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
