public class QueueableDemo implements System.Queueable { 
    
    public void execute(System.QueueableContext context){ 
        System.debug('Inside the execute method of Queueable Job'); 
        
        List<Account> listofAccounts = new List<Account>([Select Id, Name From Account limit 10]); 
        System.debug('listofAccounts: '+ listofAccounts); 
    }
}