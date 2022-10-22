/*Whenever account phone is modified then update contact record with phone field (otherphone 
with oldvalue and homephone with new value) associated with account records*/

trigger phoneUpdate on Account (after update) {    
    
    Set <Id> accIdSet = new Set <Id> ();
    List <Contact> updateconList = new List <Contact> ();                   
    
    for (Account acc : Trigger.new) {
        if (acc.Phone != trigger.oldMap.get(acc.Id).Phone) {
            accIdSet.add(acc.Id);
        }
        
        for (Contact con: [SELECT Id, Otherphone, HomePhone FROM Contact WHERE AccountId in: accIdSet]) {
            
            con.Otherphone = trigger.oldMap.get(acc.Id).Phone;
            con.Homephone = acc.Phone;
            updateconList.add(con);
            
        }
    }
    
    update updateconList; 
}