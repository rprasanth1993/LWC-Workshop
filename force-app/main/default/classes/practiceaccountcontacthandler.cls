public class practiceaccountcontacthandler {
    
    public static void demoaccount(List<Account> acclist){
        
   
   List<Contact> ct = new List<Contact>();
  
    for(Account acc:acclist){
        contact con = new contact();
        con.AccountId = acc.id;
        con.LastName = acc.Name;
        con.Email = 'rprasanth@gmail.com';
        con.Stage__c = 'prospect';
        ct.add(con);
    }
    insert ct;
    }
}