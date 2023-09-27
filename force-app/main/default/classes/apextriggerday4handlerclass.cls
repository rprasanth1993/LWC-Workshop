//when account active update all its employee phone number with account phone
public class apextriggerday4handlerclass {
   
   // public static boolean alreadyRun=false;
   /* public static void run(){
        if(trigger.isafter && trigger.isupdate){
          if(alreadyRun=false){
                alreadyRun=true;
            List<Account> atlt =[select id,Name,Phone from Account];
            for(Account acc:atlt){
                acc.Phone='';
            }
            update atlt;
                }
            
            //1.loop all account records--trigger.new,trigger.newmap
            //2.update related employees(get empployess details and update employees) 
            /*  List<Account> acclist = Trigger.new;

// this is working fine but it's not  best practice
for(Account acc:acclist){
if(acc.Active__c=='Yes')
{
List<Employee__c> empList= [select Id,Name from Employee__c where Account__c =: acc.Id];
for(Employee__c emp:empList){
emp.Phone__c = acc.Phone;
}
update empList;
}                  
}*/  
        
            // best practice
           /* List<Account> acclist = Trigger.new;
            Set<Id> accId = new Set<Id>();
            for(Account acc:acclist){
                //if(acc.Active__c =='Yes')
                accId.add(acc.Id);
            }
            
          List<Employee__c> emplist =[select Id,Name,Phone__c,Account__c from Employee__c where Account__c In:accId];
            for(Account acc:acclist){
                for(Employee__c emp:emplist){
                    if(acc.Active__c=='Yes' && acc.Id==emp.Account__c){
                        emp.Phone__c = acc.Phone;
                    }
                }     
            } 
            update emplist; */  
            
           //here we using two for loop avoiding that we ue map
          /*List<Account> acclist = Trigger.new;
            set<Id> accId = new set<Id>();
            for(Account ac:acclist){
                accId.add(ac.Id);
            }
            
            List<Employee__c> emplist = [select Id,Name,Phone__c,Account__c from Employee__c where Account__c In:accId];
            //select Id,Name(select Id,Name,Phone__c,Account__c from Employees__r) from Account where Id In:accId
            Map<Id,Account> accmap =(Map<Id,Account>) Trigger.newmap;//it show illegal assignment map to map avoid that using type casting(( Map<Id,Account>))
            for(Employee__c emp:emplist){
               if(accmap.get(emp.Account__c).Active__c=='Yes')
                   emp.Phone__c = accmap.get(emp.Account__c).Phone;
            }
            update emplist;*/
       // }
    //}
}