package mvc

class Task {
    String taskTitle;
    String taskDescription;
    boolean done;

    static constraints = {
        taskTitle (unique: true)
    }

}
