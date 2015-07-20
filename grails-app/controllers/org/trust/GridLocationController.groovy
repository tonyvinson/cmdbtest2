package org.trust



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class GridLocationController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond GridLocation.list(params), model:[gridLocationInstanceCount: GridLocation.count()]
    }

    def show(GridLocation gridLocationInstance) {
        respond gridLocationInstance
    }

    def create() {
        respond new GridLocation(params)
    }

    @Transactional
    def save(GridLocation gridLocationInstance) {
        if (gridLocationInstance == null) {
            notFound()
            return
        }

        if (gridLocationInstance.hasErrors()) {
            respond gridLocationInstance.errors, view:'create'
            return
        }

        gridLocationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'gridLocation.label', default: 'GridLocation'), gridLocationInstance.id])
                redirect gridLocationInstance
            }
            '*' { respond gridLocationInstance, [status: CREATED] }
        }
    }

    def edit(GridLocation gridLocationInstance) {
        respond gridLocationInstance
    }

    @Transactional
    def update(GridLocation gridLocationInstance) {
        if (gridLocationInstance == null) {
            notFound()
            return
        }

        if (gridLocationInstance.hasErrors()) {
            respond gridLocationInstance.errors, view:'edit'
            return
        }

        gridLocationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'GridLocation.label', default: 'GridLocation'), gridLocationInstance.id])
                redirect gridLocationInstance
            }
            '*'{ respond gridLocationInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(GridLocation gridLocationInstance) {

        if (gridLocationInstance == null) {
            notFound()
            return
        }

        gridLocationInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'GridLocation.label', default: 'GridLocation'), gridLocationInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'gridLocation.label', default: 'GridLocation'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
