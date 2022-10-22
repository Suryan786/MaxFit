public class trialCompApexController {
    @auraEnabled
    public static string createContact (string fName, string lName, string emailJS, string phoneJS, string accountId){
        contact con = new contact();
        con.FirstName = fName;
        con.LastName = lName;
        con.Email = emailJS;
        con.Phone = phoneJS;
        con.AccountId = accountId;
        insert con;
        return con.Id;
    }
}