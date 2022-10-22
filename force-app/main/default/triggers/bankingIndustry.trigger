/* Whenever account is created with industry as banking then create a contact for account, 
contact lastname as account name and contact phone as account phone*/

trigger bankingIndustry on Account (after insert) {
    
    List <Contact> cList = new List <Contact> ();
    
    for (Account acc : Trigger.new) {
        
        if (acc.Industry == 'Banking') {
            
            Contact c = new Contact ();
            c.LastName = acc.Name;
            c.Phone = acc.Phone;
            c.AccountId = acc.Id;
            cList.add (c);
            
        }
        
    }
    
    insert cList;
    
}