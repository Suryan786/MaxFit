/*The trigger will prevent the users from deleting the Accounts. This is because 
System Administrator has all the permissions, we cannot change the permissions*/

trigger onDeleteAcc on Account (before delete) {
    
    for (Account acc: Trigger.old) {
        
        acc.adderror ('You can not Delete Account record');
        
    }
    
}