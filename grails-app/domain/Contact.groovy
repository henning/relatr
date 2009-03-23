import org.grails.taggable.*

class Contact implements Taggable {

    static constraints = {
        note(maxSize:10000, blank:true, nullable:true)
        eMail(nullable:true)
        company(nullable:true)
        firstName(nullable:true)
        lastName(nullable:true)
        phone(nullable:true)
        webSite(nullable:true)
        xingPage(nullable:true)        
    }

    static searchable = true

    //static hasMany = [tags:Tag]

    String firstName
    String lastName
    String company
    String eMail
    String phone
    String mobilePhone
    String webSite
    String xingPage
    String note

}
