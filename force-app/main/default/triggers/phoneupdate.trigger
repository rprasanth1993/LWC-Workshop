trigger phoneupdate on Apex_Patient__c (after insert) {
   List<Case_List__c> calt = new List<Case_List__c>();
    
    for(Apex_Patient__c objpat:Trigger.New)
    {
        Case_List__c a = new Case_List__c();
        a.Phone_Number__c=objpat.Phone__c;
        a.Patient__c=objpat.id;
        a.Case_Status__c ='Active';
        a.Category__c ='Normal';
        calt.add(a);
    }
    try{
        insert calt;
    }
    catch(exception e)
    {
        system.debug('error' + e.getmessage());
    }
}