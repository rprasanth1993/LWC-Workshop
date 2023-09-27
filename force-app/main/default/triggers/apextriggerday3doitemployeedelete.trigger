//when all employee records deleted set account active as false
trigger apextriggerday3doitemployeedelete on Employee__c (after delete) {
    
    employeeday3handler.delemp(Trigger.old);
   /* List<Account> accList = new List<Account>();
    set<Id> acid = new set<Id>();
    for(Employee__c emp:Trigger.old){
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
    }*/
}