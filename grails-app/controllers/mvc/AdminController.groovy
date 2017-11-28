package mvc
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class AdminController {

    def index() {

    }

    def assign() {

        def tasksToAssign = Task.list()
        def users = User.list()
        Random random = new Random();

        // Collect unassigned tasks
        for(int i=0; i<tasksToAssign.size(); i++) {
            if (tasksToAssign[i].getAssignee() != null) {
                tasksToAssign.remove(i)
            }
        }

        // +- 1 is to exclude the admin from tasks
        tasksToAssign.stream().forEach { e -> e.setAssignee(users.get(random.nextInt((int)users.size()-1)+1)) }


        [tasksToAssign: tasksToAssign]

    }
}
