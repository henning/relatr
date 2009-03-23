class Tag {

    static constraints = {
    }

    static belongsTo = [contacts:Contact]
    static hasMany = [contacts:Contact]

    String name
}
