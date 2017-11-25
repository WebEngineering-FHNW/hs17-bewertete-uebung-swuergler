package mvc

class UserController {

    static scaffold = User

    //TODO: is this needed at all?
    def userLookup(User lookupInstance) {

        render(view: "login", model:[userInstance: userInstance])
    }

    def login() {

        render (view: "/tasks/allTasks")
    }

}
