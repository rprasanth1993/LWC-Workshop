/*
* @author : Prasanth
* @date   : 12/06/2023 -->day28 
* @description : do it yourself task
* 
* */
public class ApexTamilday28doitSoql {
    // @description : dispaly all opportunities with name and rating
    
    public static void displayOpportunities(){
        List<Opportunity> listOpportunity =[select Id,Name,AccountId,Account.Name,Account.Rating from Opportunity];
        // system.debug('List of Opportunity:'+listOpportunity);
        for(Opportunity oppRecord:listOpportunity){
            system.debug('opportunity record:'+oppRecord);
            if(!string.isBlank(oppRecord.AccountId) && (!string.isBlank(oppRecord.Account.Rating))){ // it will show only the the value is having account id and it ts rating details
                system.debug('Account Name:'+oppRecord.Account.Name);
                system.debug('Account Name:'+oppRecord.Account.Rating);  
            }
            
            else{
                system.debug('Account details:'+'No related records');
            }
            
        }
    }
    
    /****************************************************************************************************************************/
    //Display all account with closed won opportunities whose lead source is web
    
    public static void displayAccount(){
        List<Account> listAccount = [select Id,Name,(select Id,Name,AccountId,StageName from Opportunities where StageName='Closed Won' AND LeadSource='Web') from Account];
        //system.debug('List of Account:'+listAccount);
        
        for(Account acc:listAccount){
            system.debug('List of Account:'+listAccount);
            if(!acc.Opportunities.isEmpty()){
                for(Opportunity opp:acc.Opportunities){
                    system.debug('List of Opportunity record:'+opp);
                    system.debug('stage name:'+opp.StageName);  
                } 
            }
        }
    }
}