package mvc
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class AdminController {

    def index() {

    }

    def assign() {

        def tasksToAssign = Task.list()
        def users = User.list()

        // Collect unassigned tasks
        for(int i=0; i<tasksToAssign.size(); i++) {
            if (tasksToAssign[i].getAssignee() != null) {
                tasksToAssign.remove(i)
            }
        }

        tasksToAssign.stream().forEach { e -> e.setAssignee(users.get(2)) }

        /*
        for(int i=0; i<tasksToAssign.size(); i++) {
            tasksToAssign.add(i, tasksToAssign.get(i).setAssignee(users.get(1)))
        }
        */

        

        [tasksToAssign: tasksToAssign]

    }
}
