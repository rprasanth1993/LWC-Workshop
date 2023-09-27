trigger practicehot on Account (before insert,before update) {
    List<Account> acclt = new List<Account>();
    for(Account acc:Trigger.new){
        if(acc.AnnualRevenue==20000)
           acc.Rating.equals('Hot');
        insert acclt;
    }
    
}