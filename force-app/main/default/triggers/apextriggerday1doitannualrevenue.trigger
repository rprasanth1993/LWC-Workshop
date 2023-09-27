//when account with rating HOT created,if Annual revenue is blank set it to $20000
trigger apextriggerday1doitannualrevenue on Account (before insert) {
    
    dummycc.ict(Trigger.new);
  /*  //if(trigger.isbefore){
        for(Account acc:Trigger.new){
            if(acc.Rating=='hot')
             acc.AnnualRevenue=20000;
            system.debug(acc.Name);
        }*/
}