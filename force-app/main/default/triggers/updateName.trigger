/*Whenever phone field is updated in account then the name field should 
also get updated with name and phone number in accounts*/

trigger updateName on Account (before update) {
    
    for (Account acc : Trigger.new) {
        
        if (acc.Phone != Trigger.oldMap.get(acc.Id).Phone) {
            
            acc.name = acc.name + acc.Phone;
            
        }
    }
    
}