trigger AcTriggerToCreateOpp on Account (After insert) 
{
  List<Opportunity> opplist=new List<Opportunity>();
    For(Account acc:Trigger.new)
    {
        Opportunity p= New Opportunity(name='Trigger for '+acc.name, StageName = 'Prospecting', CloseDate = System.today() + 1, Discount_Percent__c = 20);
        p.AccountID=acc.ID;
        opplist.add(p);   
    }
    if(opplist.size()>0)
    {
        insert opplist;
    }
     
}