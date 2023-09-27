trigger apextriggercase4 on Customer_Project__c (after insert,after update) {
    
    List<Opportunity> oplist = new List<Opportunity>();
    set<Id> stid = new set<Id>();
    for(Customer_Project__c ctpr:Trigger.new){
        stid.add(ctpr.Opportunity__c);
    }
    
    List<Opportunity> opplt = [select Id,Name,Active_Customer_Project__c from Opportunity where Id In:stid];
        for(Customer_Project__c custproj:Trigger.new){
            for(Opportunity opp:opplt){
                if(custproj.status__c =='Active'){
                    opp.Active_Customer_Project__c=True;  
                    oplist.add(opp);
            }
            else{
                opp.Active_Customer_Project__c=False; 
                oplist.add(opp);
            }
        }
    }
    if(opplt.size()>0){
        update oplist;
    }
}