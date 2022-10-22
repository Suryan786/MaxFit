trigger Automatecontact on Account(after insert) {
    List<contact> lc = new List<contact>();
    
    for (Account acc : Trigger.new) {
        lc.add( new contact(lastname ='dk',accountId =acc.id) );
    }
    insert lc;
    
    UtilClass.userInsertWithRole(
        'dineshd@outlook.com', 'Dinesh',
        'dineshd@outlook.com', 'Dineshdk');
    
}