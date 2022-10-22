/*Whenever case is created with origin as email then set 
status as new and priority as Normal*/

trigger emailOrigin on Case (before insert) {
    
    for (case cs : Trigger.new) {
        
        if (cs.Origin == 'Email') {
            
            cs.Status = 'New';
            cs.Priority = 'Normal';
            
        }
        
    }
    
}