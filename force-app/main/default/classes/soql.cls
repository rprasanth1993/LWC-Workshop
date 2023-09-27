public class soql {
    
    public static void displayvalues(){
               
        List<Account> newacc =[SELECT 
                              Id,Name,Industry
                              FROM Account
                              LIMIT 10];
        for(Account acc:newacc){
            system.debug(acc.Name);
            system.debug(acc.Industry);
        }
        /*Map<Id,Account> newmp = new Map<Id,Account>([SELECT 
                              Id,Name,Industry
                              FROM Account]);
             system.debug(newmp); 
        for(Id k:newmp.keyset()){
            system.debug(k);
            system.debug(newmp.get(k));
            system.debug(newmp.get(k).Name);
        }*/
         }
     }