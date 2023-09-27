public class workshopday10mapclass {
    
    public void accountdetails(){
        
        Map<Id,Account> mapacc = new Map<Id,Account>();
        
        Account ac = [select id,name,phone,type from Account where id='0015g00000XZpLCAA1'];
        system.debug('records:'+ac);
        system.debug('records:'+ac.phone);
        mapacc.put(ac.id,ac);
        system.debug('id and accountdetails:'+mapacc);
        system.debug('respectedfield:'+mapacc.get(ac.id).type);
    }
    
    public void accountdetails1(){
        
        Map<id,Account> mapacc1 = new Map<id,Account>();
        
        List<Account> ltac = [select id,name,phone,type from Account ];
        system.debug('records:'+ltac);
        for(account acc:ltac){
            system.debug(acc.name);
            mapacc1.put(acc.id,acc);
            system.debug('id and accountdetails:'+mapacc1);
           system.debug('respectedfield:'+mapacc1.get(acc.id).name);			
        }   
        	system.debug('respectedfield:'+mapacc1.get('0015g00000XXSNPAA5').phone);
    }
}