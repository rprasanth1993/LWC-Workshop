/*
* @author : Prasanth
* @date   : 03/06/2023
* @descreiption :  if account industry is 'banking' or 'healthcare' set the rating as 'hot'
* 
* */

public class AccountHandlerClass {
    
    public static void accountBeforeUpdate(List<Account> listAccount){
        
        for(Account acc:listAccount){
            
            if(acc.Industry =='Banking' || acc.Industry == 'Healthcare'){
                acc.Rating ='Hot';           
                system.debug('Rating:'+acc.Rating);
            }
        }
        
    }
}