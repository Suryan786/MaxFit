/*Avoid creation of Account records of same name. Show error
'Account record already exist with same name.'*/

//List all duplicate account name that are used to insert.
//List all the account name that are matching with inserted names. 
//List account records that are having duplicate name via query.
//Check if the existing name list contains inserted names than add error.

trigger duplicateName on Account (before insert) {
    
    List <String> dupNameList = new List <String> ();
    List <String> existingNameList = new List <String> ();
    for (Account acc: Trigger.new) {
        dupNameList.add (acc.Name);
    }
    for (Account a: [SELECT Id, Name FROM Account WHERE name IN: dupNameList]) {
        existingNameList.add(a.Name);
    }
    for (Account a: Trigger.new) {
        if (existingNameList.contains(a.Name)) {
            a.addError ('Account record already exist with same name.');
        }
    }
}