public class CustomerTriggerHelper
{
    public static void CreateInvoiceRecords(List<Apex_Customer__c> CustomerList,Map<id,Apex_Customer__c> oldMapCustomer)
    {
        List<Apex_Invoice__c> InvoiceList = new List<Apex_Invoice__c>();
        for(Apex_Customer__c objCust:CustomerList)
        {
            if(objCust.Apex_Customer_status__c=='Active' && oldMapCustomer.get(objCust.id).Apex_Customer_status__c!='Active')
            {
            Apex_Invoice__c objInvoice = new Apex_Invoice__c();
            objInvoice.Apex_status__c = 'Pending';
            objInvoice.Apex_Customer__c = objCust.id;
            InvoiceList.add(objInvoice);
            }
        }
        insert InvoiceList;
    }
}