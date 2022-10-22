/*When a new Account record is inserted verify the industry field value, if industry 
field value is Education then assign the owner as Smriti*/

trigger educIndustry on Account (before insert) {
    
    User u=[SELECT id FROM User WHERE username='suryan@sfd.com'];
    
    for (Account acc: Trigger.new) {     
        
        if (acc.Industry =='Education') {   
            
            acc.ownerId = u.id;    
            
        } 
        
    }
    
}