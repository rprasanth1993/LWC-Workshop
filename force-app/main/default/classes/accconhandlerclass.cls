public class accconhandlerclass {
    
    public static void accconinsert(List<Account> acclt){
        List<contact> ct = new List<contact>();
        for(account acc:acclt){
            contact con = new contact();
            con.accountid = acc.Id;
            con.Lastname = acc.Name;
            con.Email = 'rprasanth1993@gmail.com';
            con.stage__c = 'showing';
            ct.add(con);
        }
        insert ct;
        
    }
    
   /* public static void accbefinsert(List<Account> accbef){
        for(Account acc1:accbef){
            if(acc1.Phone==null)
                acc1.Phone.adderror('it should be in values');
                
        }
    }*/
    
}