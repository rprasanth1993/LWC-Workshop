//create a field on account called "is_gold",checkbox(default off)
// when an opportuity is greater than 20k is_gold is true
trigger apextriggergold on Opportunity (after insert,after update) {
    
    List<Account> atlist = new List<Account>();
    set<Id> stid = new set<Id>();
    for(Opportunity opp:Trigger.new){
        stid.add(opp.AccountId);
    }
    
    List<Account> acclist =[select Id,Name,is_gold__c from Account where Id In :stid];
    for(Opportunity opp1:Trigger.new){
        for(Account acc:acclist){
            if(opp1.Amount > 20000){
                acc.is_gold__c=TRUE;
                atlist.add(acc);
            }
            else{
                acc.is_gold__c=FALSE;
                atlist.add(acc);
            }
            //atlist.add(acc);
        }
    }
    
    if(acclist.size()>0){
        update atlist;
    }

}