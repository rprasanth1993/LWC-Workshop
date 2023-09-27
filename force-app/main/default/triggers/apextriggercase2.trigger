//Create field called "Count of Contacts" on Account Object. 
//When we add the Contacts for that Account then count will populate in the field on Account details page.
//When we delete the Contacts for that Account, then Count will update automatically.
trigger apextriggercase2 on Contact (after insert,after update,after delete) {
    
  /* if((trigger.isafter && trigger.isinsert)|| (trigger.isafter &&trigger.isupdate)){
        apextriggercase2handler.inup(Trigger.new);
    }
    
    
    if(trigger.isafter && trigger.isdelete){
        apextriggercase2handler.del(Trigger.old);
    }*/
    
    if((trigger.isafter && trigger.isinsert)|| (trigger.isafter &&trigger.isupdate)){
        List<Account> acclt = new List<Account>();
        set<Id> stid = new set<Id>();
        for(Contact con:Trigger.new){
            stid.add(con.AccountId);
        }
        
        List<Account> acct=[select Id,Name,Count_of_Contacts__c,(select Id,LastName from Contacts) from Account where Id In:stid];
        //List<Account> acct =[select Id,Name,Count_of_Contacts__c from Account where Id In:stid];
       // List<Contact> ct = [select Id,LastName from contact where AccountId In:stid];
        //for(Contact ct:Trigger.new){ not necessary because we work in account object.so we are using inner query,,otherwise we go with for(contact ct:Trigger.new) and normal queryetc..
        for(Account ac1:acct){
            ac1.Count_of_Contacts__c = ac1.Contacts.size();
           //ac1.Count_of_Contacts__c = ct.size();
            acclt.add(ac1);
        }
        if(acclt.size() > 0){
            update acclt;  
        }
    }
    
    
    
    if(trigger.isafter && trigger.isdelete){
        List<Account> acclt = new List<Account>();
        set<Id> stid = new set<Id>();
        for(Contact con:Trigger.old){
            stid.add(con.AccountId);
        }
        
        List<Account> acct=[select Id,Name,Count_of_Contacts__c,(select Id,LastName from Contacts) from Account where Id In:stid];
        //List<Account> acct =[select Id,Name,Count_of_Contacts__c from Account where Id In:stid];
        //for(Contact ct:Trigger.new){ not necessary because we work in account object.so we are using inner query,,otherwise we go with for(contact ct:Trigger.new) and normal queryetc..
        for(Account ac1:acct){
            ac1.Count_of_Contacts__c = ac1.Contacts.size();
            acclt.add(ac1);
        }
        if(acclt.size() > 0){
            update acclt;  
        }
    }
}