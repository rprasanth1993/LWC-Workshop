public class soql3 {
    
    public static void display(){
        /*Integer ic = [select count() from Account];
    	system.debug(ic);*/
        
        /*List<AggregateResult> ltacc = [Select
                                      COUNT(Id) countofnum,Industry
                                      from Account
                                      GROUP By Industry];
        for(AggregateResult a :ltacc){
            system.debug(a);
            system.debug('---------');
            system.debug(a.get('Industry'));
            system.debug(a.get('countofnum'));
        }*/
        
        List<AggregateResult> ltmax = [SELECT
                                      MAX(BudgetedCost) overallcost,Name,Type
                                      FROM Campaign
                                      GROUP BY Name,Type
                                      ORDER BY Name DESC];
        for(AggregateResult newlt:ltmax){
            system.debug(newlt);
            system.debug(newlt.get('Type'));
            system.debug(newlt.get('overallcost'));
           
        }
    }

}