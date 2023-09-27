//Create a trigger that calculates the rollup summary(SUM) of  Total Revenue of all the opportunities whose stage is ‘Value Proposition’
// and display in on the Account.

trigger Oppsumtotal on Opportunity (after insert,after update) {
    set<id> opplist = new set<id>();
    List<Account> ac1= new List<Account>();  
    for(opportunity a:Trigger.new)
    {
        opplist.add(a.AccountId); //adding all opportunity related accountId   in set   
    }
    //query of  all list of accounts with set of id with all and account and opportunity
    List<account> acc = [select Id, (select Amount from opportunities where StageName='Value Proposition')from Account where Id in :opplist];
    for (Account a : acc) {// eg:acc1 iterating, acc2 iteration
        a.Total_Revenue__c = 0;
        for (opportunity c : a.opportunities) {//inner queries of values proposition,if it's value propsition it go otherise comeoutwith loop
            if (c.Amount!= null) {
                a.Total_Revenue__c += c.Amount;                
            }   
        }
        ac1.add(a);    
    }
    update ac1;
}