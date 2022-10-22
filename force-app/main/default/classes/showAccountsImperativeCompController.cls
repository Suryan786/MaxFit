public with sharing class showAccountsImperativeCompController {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccounts(){
        List<Account> accountList = new List<Account>();
        try {
            accountList = [SELECT Id, Industry, Name FROM Account WHERE Industry != null LIMIT 20];
        } catch (Exception e) {
            system.debug('This is the error '+e.getMessage());
        }
        return accountList;
    }
}