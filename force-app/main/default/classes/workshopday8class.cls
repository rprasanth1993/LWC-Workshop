public class workshopday8class {

    public  void stateupdate(){
       
         
        List<Account> lt = new List<Account>();
        lt = [select id,type,name,billingstate from account where billingstate='FL'];
        system.debug(lt);
        for(account acc:lt){
            acc.Billingstate='CA';
            
        }
        update lt;
       system.debug('updated state:'+lt);       
    }
}