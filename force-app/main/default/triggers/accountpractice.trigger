trigger accountpractice on Account (after insert,after update){
    List<Contact> ct = new List<contact>();
    List<contact> ltcon = new List<contact>([Select Id,FirstName,LastName,AccountId From Contact WHERE AccountID IN:Trigger.new]);
    Map<Id,Account> mapac = new Map<Id,Account>([Select Id,website From Account Where id In:Trigger.new]);
    
    if(Trigger.isInsert || Trigger.isUpdate && Trigger.isAfter){
        for(Contact obj:ltcon){
            
            Account objAcc = mapac.get(obj.AccountId);
            
            if(obj.FirstName != NULL){
                String strFirstName = obj.FirstName.substring(0,1);
                obj.Profile__c = objAcc.website + '/' + strFirstName + obj.LastName;
                ct.add(obj);
            }
        }
        if(ct.size()> 0)
        upsert ct;
    }
}