package mvc

class UserController {

    static scaffold = User

    def login() {
        [allUsers: User.list(), allSquads: Squad.list()]
    }

}
