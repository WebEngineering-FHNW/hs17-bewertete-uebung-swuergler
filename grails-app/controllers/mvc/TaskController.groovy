package mvc

class TaskController {
    static scaffold = Task

    //TODO: find a way to get «logged in» user
    User someone = new User()


    def newTask(String taskTitle, String taskDescription) {
        //TODO: Add to domain
    }

    def myTasks() {
        def myTasks = Task.findByAssignee(someone)
        [myTasks: myTasks]
    }


    def allTasks() {
        def allTasks = Task.list()
        [allTasks: allTasks]
    }
}
