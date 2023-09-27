trigger apextriggercase5owner on Contact_Relationship__c (before update) {
    
    set<Id> stid = new set<Id>();
    for(Contact_Relationship__c cr:Trigger.new){
        stid.add(cr.OwnerId);
        
     Map<Id,User> mapid = new Map<Id,User>([select Id,Username from User where id in:stid]);
        for(Contact_Relationship__c cr1:Trigger.new){
            cr1.Name = mapid.get(cr1.OwnerId).Name;
            system.debug(cr1.Name);
        }
            
    }
}