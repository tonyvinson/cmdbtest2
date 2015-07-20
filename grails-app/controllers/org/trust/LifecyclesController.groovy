package org.trust



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class LifecyclesController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Lifecycles.list(params), model:[lifecyclesInstanceCount: Lifecycles.count()]
    }

    def show(Lifecycles lifecyclesInstance) {
        respond lifecyclesInstance
    }

    def create() {
        respond new Lifecycles(params)
    }

    @Transactional
    def save(Lifecycles lifecyclesInstance) {
        if (lifecyclesInstance == null) {
            notFound()
            return
        }

        if (lifecyclesInstance.hasErrors()) {
            respond lifecyclesInstance.errors, view:'create'
            return
        }

        lifecyclesInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'lifecycles.label', default: 'Lifecycles'), lifecyclesInstance.id])
                redirect lifecyclesInstance
            }
            '*' { respond lifecyclesInstance, [status: CREATED] }
        }
    }

    def edit(Lifecycles lifecyclesInstance) {
        respond lifecyclesInstance
    }

    @Transactional
    def update(Lifecycles lifecyclesInstance) {
        if (lifecyclesInstance == null) {
            notFound()
            return
        }

        if (lifecyclesInstance.hasErrors()) {
            respond lifecyclesInstance.errors, view:'edit'
            return
        }

        lifecyclesInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Lifecycles.label', default: 'Lifecycles'), lifecyclesInstance.id])
                redirect lifecyclesInstance
            }
            '*'{ respond lifecyclesInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Lifecycles lifecyclesInstance) {

        if (lifecyclesInstance == null) {
            notFound()
            return
        }

        lifecyclesInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Lifecycles.label', default: 'Lifecycles'), lifecyclesInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'lifecycles.label', default: 'Lifecycles'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
