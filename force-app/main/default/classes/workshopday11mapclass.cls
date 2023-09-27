public class workshopday11mapclass {
    
    public void oppdetails(){
        
        Map<Id,Opportunity> mapopt = new Map<Id,Opportunity>();
        List<opportunity> op = new List<opportunity>();
        op =[select id,AccountId,name from opportunity];
        for(opportunity newopp:op){
            mapopt.put(newopp.AccountId,newopp);
            system.debug('opportunity recorddetails:'+mapopt);
            system.debug('particular field:'+mapopt.get(newopp.AccountId).name);
            
        }
              
    }
}