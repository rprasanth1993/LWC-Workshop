trigger CustomerTrigger on APEX_Customer__c (after update) 
{  
    
     CustomerTriggerHelper.CreateInvoiceRecords(Trigger.New,Trigger.oldMap);

}