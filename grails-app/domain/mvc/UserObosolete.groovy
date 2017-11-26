package mvc

class UserObosolete {
    Squad squad
    String username
    String password
    boolean adminUser


    static hasMany = [tasks: Task]
    static belongsTo = [squad: Squad]

    static constraints = {
        username (unique: true)
        password (password: true)
    }

    String toString() {
        "$username"
    }


}
