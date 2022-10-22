trigger AcTriggerToCreateCon on Account (After insert) 
{
  List<Contact> conlist=new List<Contact>();
    For(Account acc:Trigger.new)
    {
        Contact c= New Contact(lastname='Trigger for '+acc.name);
        c.AccountID=acc.ID;
        conlist.add(c);   
    }
    if(conlist.size()>0)
    {
        insert conlist;
    }
     
}