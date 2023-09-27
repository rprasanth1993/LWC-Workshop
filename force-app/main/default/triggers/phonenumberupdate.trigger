trigger phonenumberupdate on Case_List__c (after insert,after update) {
  List<Apex_Patient__c> patientList = new List<Apex_Patient__c>();
   
   Map<Id,Case_List__c> casemap = new Map<Id,Case_List__c>();
    
    for(Case_List__c objCase : Trigger.New )
    {
        if(objCase.Case_Status__c=='Active')
        {
        casemap.put(objCase.Patient__c,objCase);
        }
    }
 Map<ID, Apex_Patient__c> patientmap = new Map<ID, Apex_Patient__c>([SELECT Id, Phone__c FROM Apex_Patient__c Where id=:casemap.keySet()]);
    
    for(Apex_Patient__c objPatient:patientmap.values()){
        
        objPatient.Phone__c=casemap.get(objPatient.Id).Phone_Number__c;
        patientList.add(objPatient);
        
    }
   update patientList;  
}