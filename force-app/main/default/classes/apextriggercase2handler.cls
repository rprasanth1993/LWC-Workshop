public class apextriggercase2handler {
    
    public static void inup(List<Contact> ctlit){
      /*   List<Account> acclt = new List<Account>();
        set<Id> stid = new set<Id>();
        for(Contact con:ctlit){
            stid.add(con.AccountId);
        }
        
        List<Account> acct=[select Id,Name,Count_of_Contacts__c,(select Id,LastName from Contacts) from Account where Id In:stid];
        //List<Account> acct =[select Id,Name,Count_of_Contacts__c from Account where Id In:stid];
        //for(Contact ct:Trigger.new){ not necessary because we work in account object.so we are using inner query,,otherwise we go with for(contact ct:Trigger.new) and normal queryetc..
        for(Account ac1:acct){
            ac1.Count_of_Contacts__c = ac1.Contacts.size();
            acclt.add(ac1);
        }
        if(acct.size() > 0){
            update acclt;  
        }
    }
    
    public static void del(List<Contact>ctlt){
        List<Account> acclt = new List<Account>();
        set<Id> stid = new set<Id>();
        for(Contact con:ctlt){
            stid.add(con.AccountId);
        }
        
        List<Account> acct=[select Id,Name,Count_of_Contacts__c,(select Id,LastName from Contacts) from Account where Id In:stid];
        //List<Account> acct =[select Id,Name,Count_of_Contacts__c from Account where Id In:stid];
        //for(Contact ct:Trigger.new){ not necessary because we work in account object.so we are using inner query,,otherwise we go with for(contact ct:Trigger.new) and normal queryetc..
        for(Account ac1:acct){
            ac1.Count_of_Contacts__c = ac1.Contacts.size();
            acclt.add(ac1);
        }
        if(acct.size() > 0){
            update acclt;  
        }*/
    }
    }