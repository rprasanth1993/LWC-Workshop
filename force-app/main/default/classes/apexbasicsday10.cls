public class apexbasicsday10 {
    
    
    public static void displayvalue(){
       
      List<AggregateResult> agg = [select count(id) countofid,Industry from
                                    account Group by Industry having count(id)>2];
        
        /*List<AggregateResult> agg = [select count(id) countofid,Industry,Name from
                                    account Group by Industry,Name ];*/
        
        for(AggregateResult acc: agg){
        	system.debug(acc);
            system.debug('********************');
            //having countofid>5
            system.debug(acc.get('Industry'));
           	//system.debug(acc.get('name'));
            system.debug(acc.get('countofid'));
            system.debug('********************');
        }
    }      
}