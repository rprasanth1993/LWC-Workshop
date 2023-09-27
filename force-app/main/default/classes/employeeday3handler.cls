public class employeeday3handler {
    
    public static void delemp(List<Employee__c> accdel){
    List<Account> accList = new List<Account>();
    set<Id> acid = new set<Id>();
    for(Employee__c emp:accdel){
        acid.add(emp.Account__c);
    }
    
    List<Account> at =[select Id,Name,Active__c,(select id from Employees__r) from Account where Id In:acid];
    //for(Employee__c emp:Trigger.old){
       
        for(Account acc:at){
            if(acc.Employees__r.size()<1){
            acc.Active__c='No';
            accList.add(acc);
        }                       
    }
	if(accList.size() > 0){
        update accList;
    }
}
}