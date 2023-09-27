public class dummyaccounthandler 
{
    public static void accmethod(List<Account> acclist,Map<Id,Account>oldmap){
        
        List<opportunity> opplist = new List<opportunity>();
        for(Account acc:acclist){
            Account oldrecord = oldmap.get(acc.id);
            if(oldrecord.Type == 'Customer - Direct' && acc.Type=='Other'){
                opportunity opp = new opportunity();
                opp.AccountId = acc.id;
                opp.Name = acc.Name;
                opp.StageName = 'Prospecting';
                opp.CloseDate=date.today();
                opplist.add(opp);
            }
        }
        update opplist;
    }
}