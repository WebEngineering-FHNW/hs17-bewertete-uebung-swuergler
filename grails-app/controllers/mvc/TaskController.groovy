package mvc

class TaskController {

    static scaffold = Task

    //TODO: find a way to get «logged in» user

    def myTasks() {
        //def myTasks = Task.findAllByAssignee()
        //[myTasks: myTasks]
        [userInstanceList: User.list()]
    }


    def allTasks() {
        def allTasks = Task.list()
        [allTasks: allTasks]
    }

    def getInitials() {
        def initials = Task.list().assignee.toString().charAt(0)
        render view: "allTasks", model: [initials: initials]
    }

}
