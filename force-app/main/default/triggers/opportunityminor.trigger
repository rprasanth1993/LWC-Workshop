trigger opportunityminor on Opportunity (before insert,before update) {
    
    if(Trigger.isInsert || Trigger.isUpdate && Trigger.isBefore){
        for(Opportunity obj:Trigger.new){
            If(obj.Amount > 100000){
                obj.Minor_Opportunity__c = TRUE;
            }
            else{
                obj.Minor_Opportunity__c = FALSE;
            }
        }
        if(Trigger.isUpdate && Trigger.isBefore){
            for(Opportunity obj : Trigger.new){
                obj.Total_Modification__c +=1;
            }
        }
    }
}