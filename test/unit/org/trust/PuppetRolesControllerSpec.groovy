package org.trust



import grails.test.mixin.*
import spock.lang.*

@TestFor(PuppetRolesController)
@Mock(PuppetRoles)
class PuppetRolesControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.puppetRolesInstanceList
            model.puppetRolesInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.puppetRolesInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'POST'
            def puppetRoles = new PuppetRoles()
            puppetRoles.validate()
            controller.save(puppetRoles)

        then:"The create view is rendered again with the correct model"
            model.puppetRolesInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            puppetRoles = new PuppetRoles(params)

            controller.save(puppetRoles)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/puppetRoles/show/1'
            controller.flash.message != null
            PuppetRoles.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def puppetRoles = new PuppetRoles(params)
            controller.show(puppetRoles)

        then:"A model is populated containing the domain instance"
            model.puppetRolesInstance == puppetRoles
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def puppetRoles = new PuppetRoles(params)
            controller.edit(puppetRoles)

        then:"A model is populated containing the domain instance"
            model.puppetRolesInstance == puppetRoles
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'PUT'
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/puppetRoles/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def puppetRoles = new PuppetRoles()
            puppetRoles.validate()
            controller.update(puppetRoles)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.puppetRolesInstance == puppetRoles

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            puppetRoles = new PuppetRoles(params).save(flush: true)
            controller.update(puppetRoles)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/puppetRoles/show/$puppetRoles.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'DELETE'
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/puppetRoles/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def puppetRoles = new PuppetRoles(params).save(flush: true)

        then:"It exists"
            PuppetRoles.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(puppetRoles)

        then:"The instance is deleted"
            PuppetRoles.count() == 0
            response.redirectedUrl == '/puppetRoles/index'
            flash.message != null
    }
}
