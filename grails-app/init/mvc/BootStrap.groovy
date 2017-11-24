package mvc

import grails.util.Environment

class BootStrap {

    def init = { servletContext ->
        if (Environment.current == Environment.PRODUCTION) {
            return
        }

        Squad test  = save(new Squad(squadname: "Test"))
        User admin = save (new User(squad: test, username: "admin", password: "123", adminUser: true))
        save(new Task(taskTitle: "empty bin", taskDescription: "empty all bins in office", done: false, assignee: admin))
        save(new Task(taskTitle: "clean room", taskDescription: "clean office room", done: false, assignee: admin))

    }

    static save(domainObject) {
        domainObject.save(failOnError: true)
    }

    def destroy = {
    }
}
