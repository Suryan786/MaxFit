public class BasicSOQLPgm {
    
    public void getmethod(String str)
    {
        string s= str +'%';
        List<Account> ac= [ Select Name, (SELECT FirstName FROM Contacts ) from Account];
        For(Account a:ac)
        {
            System.debug('Account Name '+a.Name);
            for (Contact c: a.Contacts)
            System.debug('Contact Name '+c.FirstName);
        }
    }
    
}