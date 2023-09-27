trigger Insurance on Case_List__c (after insert,after update)
{
    List<Apex_Patient__c> ptlt = new List<Apex_Patient__c>();
    for(Case_List__c cl:Trigger.new){
            if(cl.Category__c.equals('Covid')){
                //Apex_Patient__c ap = new Apex_Patient__c(id=cl.Patient__c,Insurance__c=True);
                Apex_Patient__c ap = new Apex_Patient__c();
                ap.id = cl.Patient__c;
                ap.Insurance__c = True;
                ptlt.add(ap);
            }
            else{
                Apex_Patient__c ap = new Apex_Patient__c(id=cl.Patient__c,Insurance__c=False); 
                ptlt.add(ap);
            }
        }
    update ptlt;
}