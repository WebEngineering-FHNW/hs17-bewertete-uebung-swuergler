package mvc
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_USER', 'ROLE_ADMIN'])
class TaskController {

    static scaffold = Task

    def allTasks() {
        def allTasks = Task.list()
        [allTasks: allTasks]
    }

    def unassignedTasks() {
        def unassignedTasks = Task.findAllByAssignee(null)
        [unassignedTasks: unassignedTasks]
    }

}
