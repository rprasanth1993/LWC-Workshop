trigger contactRecordValues on Contact (after insert) {
 List<Secondary_Contact1__c> sectlist = new List<Secondary_Contact1__c>();   
       
        Id SalesRecordTypeId = Schema.SObjectType.Secondary_Contact1__c .getRecordTypeInfosByName().get('Sales').getRecordTypeId();
        Id ServiceRecordTypeId = Schema.SObjectType.Secondary_Contact1__c .getRecordTypeInfosByName().get('Service').getRecordTypeId();
        
        for(Contact con:Trigger.new){ 
            if(con.Secondary_Contact_Type__c=='Type1'){ 
                Secondary_Contact1__c seccon = new Secondary_Contact1__c();
                seccon.RecordTypeId= SalesRecordTypeId;               
                sectlist.add(seccon);       
            }
            else if(con.Secondary_Contact_Type__c=='Type2'){ 
                Secondary_Contact1__c seccon1 = new Secondary_Contact1__c(); 
                seccon1.RecordTypeId = ServiceRecordTypeId;        
                sectlist.add(seccon1); 
            }
        }
        List<Contact> lstcon=new List<Contact>();
            if(sectlist.size()>0){
                insert sectlist;
               List<contact> cn= [select id, name,Secondary_Contact_Type__c from Contact where Id IN :trigger.new];
                for(Contact con:cn){
                    for(Secondary_Contact1__c sec:sectlist){
                    con.Secondary_Contact1__c = sec.Id;
                    lstcon.add(con);
                }
            }
                update lstcon;
                system.debug(lstcon);
        }
}