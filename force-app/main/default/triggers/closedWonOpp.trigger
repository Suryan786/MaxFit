/*Whenever opportunity stagename is modified to closed won then 
set closedate as today and type as customer*/

trigger closedWonOpp on Opportunity (before update) {
    
    for (Opportunity opp: Trigger.new) {
        
        if (opp.StageName == 'Closed won') {
            
            opp.Closedate = System.today();
            opp.Type = 'Customer';
            
        }
        
    }
    
}