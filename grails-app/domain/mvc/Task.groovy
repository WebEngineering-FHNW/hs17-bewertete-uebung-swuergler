package mvc

class Task {
    String taskTitle
    String taskDescription
    boolean done
    User assignee

    String toString() {
        "$taskTitle"
    }


    static constraints = {
        taskTitle (unique: true)
    }

    static mapping = {
        done defaultValue: false
    }

}
