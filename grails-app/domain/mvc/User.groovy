package mvc

class User {
    Squad squad
    String username
    String password
    boolean adminUser

    static constraints = {
        username (unique: true)
        password (password: true)
    }

}
