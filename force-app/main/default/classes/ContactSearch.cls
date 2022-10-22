public class ContactSearch {
    public static list<contact> searchforcontacts (String lastName, String postalCode){
        List<contact> contactsFound = [Select Id, Name 
                                       from contact 
                                       where LastName =:lastname 
                                       and MailingpostalCode=:postalCode];
        return contactsfound;
    }
}