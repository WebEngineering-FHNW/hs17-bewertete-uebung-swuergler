package mvc

import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_USER', 'ROLE_ADMIN'])
class TaskController {

    static scaffold = Task

    def myTasks() {
        def loggedInUser = SpringSecurityService.getCurrentUser()
        def myTasks = Task.list()

        // Calculate size of new array
        for(int i=0; i<myTasks.size(); i++) {
            if (myTasks[i].getAssignee() != loggedInUser) {
                myTasks.remove(i)
            }
        }

        [myTasks: myTasks]
    }

    def allTasks() {
        def allTasks = Task.list()

        [allTasks: allTasks]
    }


    def unassignedTasks() {
        def unassignedTasks = Task.list()

        // Calculate size of new array
        for(int i=0; i<unassignedTasks.size(); i++) {
            if (unassignedTasks[i].getAssignee() != null) {
                unassignedTasks.remove(i)
            }
        }

        [unassignedTasks: unassignedTasks]
    }

    def getInitials() {
        def initials = Task.list().assignee.toString().charAt(0)
        render view: "unassignedTasks", model: [initials: initials]
    }

}
