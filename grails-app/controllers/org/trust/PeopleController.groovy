package org.trust



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PeopleController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond People.list(params), model:[peopleInstanceCount: People.count()]
    }

    def show(People peopleInstance) {
        respond peopleInstance
    }

    def create() {
        respond new People(params)
    }

    @Transactional
    def save(People peopleInstance) {
        if (peopleInstance == null) {
            notFound()
            return
        }

        if (peopleInstance.hasErrors()) {
            respond peopleInstance.errors, view:'create'
            return
        }

        peopleInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'people.label', default: 'People'), peopleInstance.id])
                redirect peopleInstance
            }
            '*' { respond peopleInstance, [status: CREATED] }
        }
    }

    def edit(People peopleInstance) {
        respond peopleInstance
    }

    @Transactional
    def update(People peopleInstance) {
        if (peopleInstance == null) {
            notFound()
            return
        }

        if (peopleInstance.hasErrors()) {
            respond peopleInstance.errors, view:'edit'
            return
        }

        peopleInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'People.label', default: 'People'), peopleInstance.id])
                redirect peopleInstance
            }
            '*'{ respond peopleInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(People peopleInstance) {

        if (peopleInstance == null) {
            notFound()
            return
        }

        peopleInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'People.label', default: 'People'), peopleInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'people.label', default: 'People'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
