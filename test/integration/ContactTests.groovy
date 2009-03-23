import grails.test.*

class ContactTests extends GrailsUnitTestCase {
    protected void setUp() {
        super.setUp()
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testTaggable() {

        def contact = new Contact(
            company:"somebusiness",
            mobilePhone:"098098",
            firstName:"lala",
            lastName:"haha",
            phone:"0987987",
            eMail:"hjkkjn",
            mobilePhone:"kjnjn",
            webSite:"kljnlkm",
            xingPage:"kjnkjn"
        )

        if (! contact.save()){
            println contact.errors
        }

        contact.addTag("boss").addTag("interest-in-linux") .addTag("interest-in-java")

        contact.save()

        def loadedContact = Contact.get(1)

        println loadedContact.tags

        def bosses = Contact.findAllByTag("boss")

        println bosses

        
    }
}
