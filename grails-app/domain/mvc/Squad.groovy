package mvc

class Squad {
    String squadname

    static hasMany = [users: User]

    String toString() {
        "$squadname"
    }

}
