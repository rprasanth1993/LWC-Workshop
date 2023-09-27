public class soql5 {
    public static void display()
    {	
        // std.object(parent to child relationship)
        /*List<Account> ltacc = [Select Id,Name,(Select Email From Contacts) from Account];
        for(Account b:ltacc)
        {
        	system.debug(b.Name);   
        
        for(Contact con:b.Contacts)
        {
            system.debug(con.Email);
        }
        }*/
        
        //custom object(parent to child)
        List<Apex_Patient__c> ltpat = [Select Patient_Last_Name__c,Phone__c,(Select Case_Last_Name__c from CaseLists__r) from Apex_Patient__c];
        for(Apex_Patient__c ap:ltpat){
            system.debug(ap);
            system.debug(ap.Patient_Last_Name__c);
            
            for(Case_List__c pt:ap.CaseLists__r) {
                if(pt.Case_Last_Name__c!=NULL)
                system.debug(pt.Case_Last_Name__c);
            }
        }
    }
}