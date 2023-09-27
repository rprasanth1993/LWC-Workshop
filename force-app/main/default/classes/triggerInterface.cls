public interface triggerInterface {
    //before,after - insert,update,delete,undelete
   
    void beforeInsert(List<sObject> newRecordsList);
    void afterInsert(List<sObject> newRecordsList, Map<Id,sObject> newRecordsMap);
    
    void beforeUpdate(Map<Id,sObject> newRecordsMap,Map<Id,sObject> oldRecordsMap);
    void afterUpdate(Map<Id,sObject> newRecordsMap,Map<Id,sObject> oldRecordsMap);
    
    void beforeDelete(List<sObject> oldRecordsList,Map<Id,sObject> oldRecordsMap);
    void afterDelete(Map<Id,sObject> oldRecordMap);
    
    void afterUndelete(List<sObject> newRecordsList,Map<Id,sObject> nweRecordsMap);
}