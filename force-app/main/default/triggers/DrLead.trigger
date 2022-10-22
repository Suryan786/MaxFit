//Prefix first name with Dr when new Lead is created or updated

trigger DrLead on Lead (before insert, before update) {
    
    for (Lead l : Trigger.new) {
        
        l.FirstName = 'Dr ' + l.FirstName;
        
    }

}