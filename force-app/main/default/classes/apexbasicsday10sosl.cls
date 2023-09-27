public class apexbasicsday10sosl {
    
    public void displayvalue(){
        List<List<sobject>> searchList = [Find 'united'  returning 
                                   Account(Name),contact(LastName)];
        
        List<Account> acc = searchList[0];
        for(Account a:acc){
            system.debug(a.name);
        }
        
        List<Contact> con = searchList[1];
        for(contact c:con){
            system.debug(c.LastName);
        }
        
    } 
    // List<sobject>> searchList = [Find 'united'  returning Account(Name),contact(LastName)];
     
    //Account acc = [select name from account limit1];
    //system.debug(acc.name);
    
    //sobject acc = [select name from account limit1];
    //system.debug(((Account)acc).name);
}