package mvc

class User {
    Group group;
    String username;
    String password;
    boolean adminUser;

    static constraints = {
        //username (unique: true)
        password (password: true)
    }

}
