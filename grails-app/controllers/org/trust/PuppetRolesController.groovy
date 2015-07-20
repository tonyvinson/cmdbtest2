package org.trust



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PuppetRolesController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PuppetRoles.list(params), model:[puppetRolesInstanceCount: PuppetRoles.count()]
    }

    def show(PuppetRoles puppetRolesInstance) {
        respond puppetRolesInstance
    }

    def create() {
        respond new PuppetRoles(params)
    }

    @Transactional
    def save(PuppetRoles puppetRolesInstance) {
        if (puppetRolesInstance == null) {
            notFound()
            return
        }

        if (puppetRolesInstance.hasErrors()) {
            respond puppetRolesInstance.errors, view:'create'
            return
        }

        puppetRolesInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'puppetRoles.label', default: 'PuppetRoles'), puppetRolesInstance.id])
                redirect puppetRolesInstance
            }
            '*' { respond puppetRolesInstance, [status: CREATED] }
        }
    }

    def edit(PuppetRoles puppetRolesInstance) {
        respond puppetRolesInstance
    }

    @Transactional
    def update(PuppetRoles puppetRolesInstance) {
        if (puppetRolesInstance == null) {
            notFound()
            return
        }

        if (puppetRolesInstance.hasErrors()) {
            respond puppetRolesInstance.errors, view:'edit'
            return
        }

        puppetRolesInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PuppetRoles.label', default: 'PuppetRoles'), puppetRolesInstance.id])
                redirect puppetRolesInstance
            }
            '*'{ respond puppetRolesInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PuppetRoles puppetRolesInstance) {

        if (puppetRolesInstance == null) {
            notFound()
            return
        }

        puppetRolesInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PuppetRoles.label', default: 'PuppetRoles'), puppetRolesInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'puppetRoles.label', default: 'PuppetRoles'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
