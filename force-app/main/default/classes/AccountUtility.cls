public class AccountUtility {
    public static void viewAnnualRevenue(){
        List<Account> accountsList = [SELECT Name, AnnualRevenue FROM Account];
        for (Account acc : accountsList){
            String acctRev = 'account name: ' + acc.Name + ', annual revenue: ' + acc.AnnualRevenue;
            system.debug(acctRev);
        }
    }
}