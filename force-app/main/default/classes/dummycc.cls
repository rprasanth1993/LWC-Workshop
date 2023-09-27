public class dummycc {
    
    public static void ict(List<Account>acclist){
        for(Account acc:acclist){
            if(acc.Rating=='hot')
             acc.AnnualRevenue=20000;
            system.debug(acc.Name);
        }        
        
    }

}