package mvc

class Task {
    String taskTitle
    String taskDescription
    boolean done
    User assignee

    static belongsTo = [user: User]

    static constraints = {
        taskTitle (unique: true)
    }

    static mapping = {
        done defaultValue: false
    }



}
