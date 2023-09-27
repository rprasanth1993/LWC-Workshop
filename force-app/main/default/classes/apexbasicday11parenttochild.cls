//parent to child

public class apexbasicday11parenttochild {
    
    public static void displayvalue(){
        List<Account> ltacc = [select Id,Name,(select id,LastName from contacts) 
                               from Account];
        for(Account acc:ltacc){
            system.debug('*****************');
            system.debug(acc);
            system.debug(acc.name);
            
            for (contact con:acc.contacts){
            system.debug(con);
            system.debug(con.LastName);
            system.debug('*****Finished****');
        }
        }
        
      /*  List<Apex_Patient__c> ltpt = [select id,Patient_Last_Name__c,(select Case_Last_Name__c from CaseLists__r)from Apex_Patient__c];
        for(Apex_Patient__c ap:ltpt){
            
             system.debug('*****************');
            system.debug(ap);
            system.debug(ap.Patient_Last_Name__c);
            
            for(Case_List__c cl:ap.CaseLists__r)
            {
                system.debug(cl);
                system.debug(cl.Case_Last_Name__c);
                system.debug('*****Finished****');
            }
        }
    }*/
    }

}