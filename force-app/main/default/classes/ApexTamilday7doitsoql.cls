/*
* @author : Prasanth
* @date   : 11/06/2023 -->day27 
* @description : do it yourself task
* 
* */
public class ApexTamilday7doitsoql {
    
    // @description : dispaly all account records
    
    public static void displayAccount(){
        List<Account> listAccount  = [select Id,Name from Account];
        // system.debug('List of records:'+listAccount);
        for(Account accRecord:listAccount){
            system.debug('Account records:'+accRecord);
        }
    }
    /****************************************************************************************************************************/
    
    // @description : dispaly all opportunity records
    
    public static void displayOpportunity(){
        List<Opportunity> listOpportunity = [select Id,Name,Amount from Opportunity];
        for(Opportunity oppRecord : listOpportunity){
            system.debug('Opportunity records:'+oppRecord);
        }
    }
    
    /****************************************************************************************************************************/
    
    // @description : dispaly all account and opportunity records with rating 'hot' passing the parameter in method
    
    public static void accountRelatedOpportunity(String rating){
        List<Account> listAccount = [select Id,Name,Rating,(select Id,Name from Opportunities) from Account where Rating =:rating];
        for(Account acc:listAccount){
            if(!acc.Opportunities.isEmpty()){
                system.debug('list of Account:'+acc);
                
                for(Opportunity opp:acc.Opportunities){
                    system.debug('list of opportunity:'+opp);
                }  
            }
        }
    }    
   /****************************************************************************************************************************/ 
   // @description :crate an opportunity id pass id as parameter and display opportunity name and account name
   
    public static void displayOpportunityId(String Id){
        List<Opportunity> listOpp = [select Id,Name, Account.Name,OwnerId,Owner.Name  from Opportunity];
        
        for(Opportunity opp:listOpp){
            system.debug('opportunity record:'+opp);
            system.debug('opportunity Name:'+opp.Name);
           system.debug('Account name:'+opp.Account.Name);
        }
    }
}