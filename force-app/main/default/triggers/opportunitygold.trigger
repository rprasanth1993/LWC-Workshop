trigger opportunitygold on Opportunity (after insert,after update) {
    List<Account> lt = new List<Account>();
    Set<Id> stid = new Set<Id>();
    for(opportunity obj:Trigger.new){
        stid.add(obj.AccountId);
    } 
    Map<Id,Opportunity> mapopp= new Map<Id,Opportunity>();
    if(Trigger.isInsert || Trigger.isUpdate && Trigger.isAfter)
    {
        for(Opportunity obj1:Trigger.new){
            mapopp.put(obj1.AccountId,obj1);
        }  
        for(Account obj:[Select id,is_gold__c from Account WHERE Id In:stid])
        {
            if(mapopp.get(obj.id).Amount>20000){
                obj.is_gold__c = TRUE;
                lt.add(obj);
            }
            else{
                obj.is_gold__c = FALSE;
                lt.add(obj);
            }
        }
    }
    if(lt.size()>0)
        upsert lt;    
}