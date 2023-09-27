public class RevenueHandler {

    /*public static void RevenueCalculate(List<Opportunity> optyList){
        
        Set<Id> accIdSet = new Set<Id>(); 
		//List<opportunity> oppList = new List<opportunity>();
		List<Account> accList = new List<Account>();
		for(opportunity op : optyList)
		{
    		accIdSet.add(op.accountId);
		}
//map will contain id's of account is key,it's relatted account and opportunity value
Map<Id,Account> mapOfAcc = new map<Id,Account>([Select id, name, (Select id, amount From Opportunities where StageName='Value Proposition') From Account Where Id IN : accIdSet]);
system.debug(mapOfAcc);
for(Account ac : mapOfAcc.values())//return which is return all the accounts(value)
{
    Decimal sum = 0;
    Account acc = mapOfAcc.get(ac.id);//based on account id fetcing account values 
    for(Opportunity op: acc.opportunities)
    {
        if(op.Amount!=null){
            sum = sum+op.amount;
        }
        else {
           sum = 0; 
        }
    }
    acc.Total_Revenue__c = sum;
    accList.add(acc);
}
update accList;
        
    }*/
}