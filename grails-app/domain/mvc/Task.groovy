package mvc

class Task {
    String taskTitle
    String taskDescription
    boolean done
    User assignee


    String toString() {
        "$taskTitle"
    }

    User getAssignee() {
        return this.assignee
    }

    static constraints = {
        taskTitle (unique: true)
        assignee(nullable: true)
    }

    static mapping = {
        done defaultValue: false
    }

}
