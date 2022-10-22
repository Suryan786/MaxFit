/*Create related contact as 'Steve Jobs' when opportunity is create*/

trigger relatedCon on Opportunity (after insert) {
    
    List <Contact> conList = new List <Contact> ();
    
    for (Opportunity opp: Trigger.new) {
        
        Contact c = new Contact ();
        c.AccountId = opp.AccountId;
        c.FirstName = 'Steve';
        c.LastName = 'Jobs';
        conList.add (c); 
        
    }
    
    insert conList;
    
}