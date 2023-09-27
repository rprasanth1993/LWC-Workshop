trigger accountinsertcontact on Account (after insert,before insert) {
   /* List<contact> ct = new List<contact>();
    for(account acc:Trigger.new){
        contact con = new contact();
        con.accountid = acc.Id;
        con.Lastname = acc.Name;
        con.Email = 'rprasanth1993@gmail.com';
        con.stage__c = 'showing';
        ct.add(con);
    }
    insert ct;*/
    if(trigger.isAfter && trigger.isInsert){
    accconhandlerclass.accconinsert(Trigger.new);
    }
    
  /*  if(trigger.isBefore && trigger.isInsert){
        accconhandlerclass.accbefinsert(Trigger.new);
    }*/
}