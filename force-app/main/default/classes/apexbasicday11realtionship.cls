//child to parent relationship

public class apexbasicday11realtionship {
    
    public static void displayvalue(){
      List<Contact> ltcon = [select id,lastname,Account.Name,Account.AccountNumber from contact];
for(contact con:ltcon){
system.debug(con);
system.debug(con.lastname);
system.debug(con.Account.Name);
system.debug(con.Account.AccountNumber);
}
}
        //custom object
       /* List<Case_List__c> ltcon = [select Id,Case_Last_Name__c,Patient__r.Patient_Last_Name__c,Patient__r.Phone__c from Case_List__c];
        for(Case_List__c con:ltcon){
            system.debug(con);
            system.debug(con.Case_Last_Name__c);
            system.debug(con.Patient__r.Patient_Last_Name__c);
            system.debug(con.Patient__r.Phone__c);
        }
    }*/
}