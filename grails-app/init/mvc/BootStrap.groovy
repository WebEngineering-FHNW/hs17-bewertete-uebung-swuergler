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
        def user = User.findOrSaveWhere(username: 'erik', password: 'test')
        def user2 = User.findOrSaveWhere(username: 'john', password: 'test')
        def user3 = User.findOrSaveWhere(username: 'frank', password: 'test')

        if(!admin.authorities.contains(adminRole)){
            UserRole.create(admin,adminRole,true)
        }

        if(!user.authorities.contains(adminRole)){
            UserRole.create(user,userRole, true)
        }

        save(new Task(taskTitle: "empty bin", taskDescription: "empty all bins in office", done: false))
        save(new Task(taskTitle: "clean room", taskDescription: "clean office room", done: false))
        save(new Task(taskTitle: "wash car", taskDescription: "wash the car of the boss", done: false, assignee: user))

    }

    static save(domainObject) {
        domainObject.save(failOnError: true)
    }

    def destroy = {
    }
}
