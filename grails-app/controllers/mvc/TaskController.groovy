package mvc

class TaskController {
    static scaffold = Task

    //TODO: find a way to get «logged in» user

    ArrayList<Task> allTasks = new ArrayList<>();

    def newTask(String taskTitle, String taskDescription) {
        allTasks.add(new Task(taskTitle: taskTitle, taskDescription: taskDescription, done: false, User: "not real user"))
    }

    def myTasks() {
        def user = "not real user"
        //TODO: find all tasks with user xyz
        render view: "myTasks", model: [user: user]
    }

    def allTasks() {
        def allTasks = Task.list()
        [allTasks: allTasks]
    }
}
