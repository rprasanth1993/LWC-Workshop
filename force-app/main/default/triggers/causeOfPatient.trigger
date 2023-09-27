trigger causeOfPatient on Diagnosis__c (after insert,after update) {
    set<Id> pt = new set<Id>();
    for(Diagnosis__c cp:Trigger.new){
        pt.add(cp.CaseListdia__c);
    }   
    Map<Id,Case_List__c> mpct = new Map<Id,Case_List__c>([Select Patient__c from Case_List__c where Id in:pt]);
        set<Id> npt = new set<Id>();
        for(Case_List__c nct:mpct.values()){
            npt.add(nct.Patient__c);
        }
     
        Map<Id,Apex_Patient__c> newpat = new Map<Id,Apex_Patient__c>([Select id,Reason__c from Apex_Patient__c where id in:npt]);
        for(Diagnosis__c dia:Trigger.new){
            if(mpct.containsKey(dia.CaseListdia__c) && newpat.containsKey( mpct.get(dia.CaseListdia__c).Patient__c)){
             newpat.get(mpct.get(dia.CaseListdia__c).Patient__c).Reason__c=dia.causes__c;
                
            }
        } 
        update newpat.values();  
}