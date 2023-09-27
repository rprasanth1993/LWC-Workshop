public class asynchday4batch implements Database.Batchable<sObject>, Database.Stateful{//added database.stateful to know to how many times the execute method runs
    //public class asynchday4batch implements Database.Batchable<sObject> {
    
    
    /* public Database.QueryLocator start(Database.BatchableContext bc){//database.querylocation returning the soql..here queryLocator is list of records
system.debug('start method');
return Database.getQueryLocator('select Id,Name from Account');//based on object
}

//we have to datatype based on the query object in start method
public void execute(Database.BatchableContext bc,List<Account> scope){//here instead of query we can give any name..
system.debug('execute collection');

List<Account> accupdate = new List<Account>();
for(Account acc:scope){
acc.Name = acc.Name+'added';
accupdate.add(acc);
}
update accupdate; 
}
public void finish(Database.BatchableContext bc){
system.debug('finish method');

}*/
    
    //update annual revenue 5000 of accounts with rating hot
    public integer count = 0;
    public Database.QueryLocator start(Database.BatchableContext bc){//database.querylocation returning the soql..here queryLocator is list of records
        system.debug('start method');
        //return Database.getQueryLocator('select Id,Name from Account');//based on object..instead of direct query you can store the soql in variable
        string query = 'select id,name,AnnualRevenue from Account where Rating = \'Hot\'';//here we used hot in 'slash because in initial opened the single quote at end we use it take the soql in finished,so avoiding
        return Database.getQueryLocator(query);
    }
    
    //we have to datatype based on the query object in start method
    public void execute(Database.BatchableContext bc,List<Account> scope){//here instead of query we can give any name..
        system.debug('execute collection');
        
       /* List<Account> accupdate = new List<Account>();
        for(Account acc:scope){
            acc.AnnualRevenue = 5000;
            accupdate.add(acc);
        }
        update accupdate; */
        count+=1;//count=count+1;
    }
    public void finish(Database.BatchableContext bc){
        system.debug('finish method');
        system.debug('No.of batches executed:'+count);
        
    }
}