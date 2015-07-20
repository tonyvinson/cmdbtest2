package org.trust



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RoomNumberController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond RoomNumber.list(params), model:[roomNumberInstanceCount: RoomNumber.count()]
    }

    def show(RoomNumber roomNumberInstance) {
        respond roomNumberInstance
    }

    def create() {
        respond new RoomNumber(params)
    }

    @Transactional
    def save(RoomNumber roomNumberInstance) {
        if (roomNumberInstance == null) {
            notFound()
            return
        }

        if (roomNumberInstance.hasErrors()) {
            respond roomNumberInstance.errors, view:'create'
            return
        }

        roomNumberInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'roomNumber.label', default: 'RoomNumber'), roomNumberInstance.id])
                redirect roomNumberInstance
            }
            '*' { respond roomNumberInstance, [status: CREATED] }
        }
    }

    def edit(RoomNumber roomNumberInstance) {
        respond roomNumberInstance
    }

    @Transactional
    def update(RoomNumber roomNumberInstance) {
        if (roomNumberInstance == null) {
            notFound()
            return
        }

        if (roomNumberInstance.hasErrors()) {
            respond roomNumberInstance.errors, view:'edit'
            return
        }

        roomNumberInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'RoomNumber.label', default: 'RoomNumber'), roomNumberInstance.id])
                redirect roomNumberInstance
            }
            '*'{ respond roomNumberInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(RoomNumber roomNumberInstance) {

        if (roomNumberInstance == null) {
            notFound()
            return
        }

        roomNumberInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'RoomNumber.label', default: 'RoomNumber'), roomNumberInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'roomNumber.label', default: 'RoomNumber'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
