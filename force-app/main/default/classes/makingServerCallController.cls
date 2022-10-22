public class makingServerCallController {
    
    @auraEnabled
    public static List<Account> getAccounts(){
        List<Account> accList = [SELECT Id, Name, Industry FROM Account Where Industry != null];
        return accList;
    }

}