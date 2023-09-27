//handler class
public class ContactTriggerService implements triggerInterface {
    
    public void beforeInsert(List<sObject> newRecordsList){}
    public void afterInsert(List<sObject> newRecordsList, Map<Id,sObject> newRecordsMap){}
    
    public void beforeUpdate(Map<Id,sObject> newRecordsMap,Map<Id,sObject> oldRecordsMap){}
    public void afterUpdate(Map<Id,sObject> newRecordsMap,Map<Id,sObject> oldRecordsMap){}
    
    public void beforeDelete(List<sObject> oldRecordsList,Map<Id,sObject> oldRecordsMap){}
    public void afterDelete(Map<Id,sObject> oldRecordMap){}
    
    public void afterUndelete(List<sObject> newRecordsList,Map<Id,sObject> nweRecordsMap){}

}