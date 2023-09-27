/*
when an opportunity created,update the highest opportunity value in the account record
*/
trigger apextriggerday1doitoppaccount on Opportunity (after insert,after update) {
   /* List<Account> acc = new List<Account>();
    Set<Id> idopp = new Set<Id>();
    for(Opportunity oo:Trigger.new){
        idopp.add(oo.AccountId);
    }
    Opportunity opp = [select Amount from Opportunity where AccountId In: idopp ORDER BY Amount DESC nulls last LIMIT 1 ];
    for(Account ot:[select Id,Highest_opp_value__c from Account where Id In:idopp]){
        
        ot.Highest_opp_value__c = opp.Amount;
        acc.add(ot);        
    }    
       update acc;  */   
}