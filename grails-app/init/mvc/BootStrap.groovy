package mvc

import grails.util.Environment

class BootStrap {

    def init = { servletContext ->
        if (Environment.current == Environment.PRODUCTION) {
            return
        }


        def adminRole = Role.findOrSaveWhere(authority: 'ROLE_ADMIN')
        def userRole = Role.findOrSaveWhere(authority: 'ROLE_USER')

        def admin = User.findOrSaveWhere(username: 'admin', password: 'admin')
        def user = User.findOrSaveWhere(username: 'test', password: 'test')

        if(!admin.authorities.contains(adminRole)){
            UserRole.create(admin,adminRole,true)
        }

        if(!user.authorities.contains(adminRole)){
            UserRole.create(user,userRole, true)
        }

        save(new Task(taskTitle: "empty bin", taskDescription: "empty all bins in office", done: false, assignee: admin))
        save(new Task(taskTitle: "clean room", taskDescription: "clean office room", done: false, assignee: admin))


    }

    static save(domainObject) {
        domainObject.save(failOnError: true)
    }

    def destroy = {
    }
}
