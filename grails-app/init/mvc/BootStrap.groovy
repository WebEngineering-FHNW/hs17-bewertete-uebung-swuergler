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
        def user4 = User.findOrSaveWhere(username: 'sven', password: 'test')

        if(!admin.authorities.contains(adminRole)){
            UserRole.create(admin,adminRole,true)
        }

        if(!user.authorities.contains(userRole)){
            UserRole.create(user,userRole, true)
            UserRole.create(user2,userRole, true)
            UserRole.create(user3,userRole, true)
            UserRole.create(user4,userRole, true)
        }

        save(new Task(taskTitle: "empty bin", taskDescription: "empty all bins in office until the next Friday afternoon", done: false, assignee: user))
        save(new Task(taskTitle: "clean room", taskDescription: "clean office room during the next lunch", done: false))
        save(new Task(taskTitle: "bake a cake", taskDescription: "bake a cake for the birthday of jane", done: false))
        save(new Task(taskTitle: "make a reservation", taskDescription: "make a reservation for the meeting with the customer at the restaurant", done: false))
        save(new Task(taskTitle: "pickup new office supplies", taskDescription: "pick up the recently arrived office supplies at the store", done: false))
        save(new Task(taskTitle: "wash car", taskDescription: "wash the car of the boss", done: false))

    }

    static save(domainObject) {
        domainObject.save(failOnError: true)
    }

    def destroy = {
    }
}
