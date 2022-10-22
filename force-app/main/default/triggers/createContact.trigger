//Create related contact when Account is created

trigger createContact on Account (after insert) {
    
    List <Contact> conList = new List <Contact> ();
    
    for (Account acc: Trigger.new) {
        Contact c = new Contact ();
        c.lastName = acc.Name;
        c.accountId = acc.Id;
        conList.add (c);
    }
    
    insert conList;
    
}