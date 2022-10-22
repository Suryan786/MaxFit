public class showAccountsCompController {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccounts(){
        List<Account> accountList = new List<Account>();
        try {
            accountList = [SELECT Id, Industry, Name FROM Account LIMIT 10];
        } catch (Exception e) {
            system.debug('This is the error '+e.getMessage());
        }
        return accountList;
    }
}