public class soql2 {
 	
    Public static void display(){
        
    //String strInd='Education';
    
    List<Account> acc = [SELECT 
                         Id,Name,Industry
                         FROM Account
                         Where Industry !=Null
                        Order By Name];
    
    for(Account a :acc){
        system.debug(a.Industry);
    }
    }
}