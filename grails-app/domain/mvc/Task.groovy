package mvc

class Task {
    String taskTitle
    String taskDescription
    boolean done
    User assignee

    static constraints = {
        taskTitle (unique: true)
    }

    static mapping = {
        done defaultValue: false
    }



}
