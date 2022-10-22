//Whenever lead is created with lead source as web then give rating as hot otherwise cold

trigger webSource on Lead (before insert) {
    
    for (Lead l : Trigger.new) {
        
        if (l.leadSource == 'Web') {
            
            l.Rating = 'Hot';
            
        }
        
        else {
            
            l.Rating = 'Cold';
            
        }
    }
    
}