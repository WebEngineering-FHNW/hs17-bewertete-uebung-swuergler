package mvc
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class AdminController {

    def index() {

    }

    def assign() {

        def tasksToAssign = Task.findAllByAssignee(null)
        def users = User.list()
        Random random = new Random();

        // +- 1 is to exclude the admin from tasks
        tasksToAssign.stream().forEach { e -> e.setAssignee(users.get(random.nextInt((int)users.size()-1)+1)) }
        tasksToAssign.stream().forEach {e -> e.save(flush:true)}

        [tasksToAssign: tasksToAssign]

    }

    def assign2(Task task) {
        def users = User.list()
        Random random = new Random()
        if (task.getAssignee() == null){
            task.setAssignee(users.get(random.nextInt((int)users.size()-1)+1))
        }
    }

}
