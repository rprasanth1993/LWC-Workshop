//for this all check the trigger.this handler class..triggername is apextriggerday3
public class apextriggerday3accounthandler {  
    
    
    // public void beforeInsert(){
    public static void beforeInsert(){
        
    }
    
    public static void afterUpdate(){
        
    }
    /*public static void beforeDelete(){
        system.debug('defore details');// to check create an reocrd in account and delete the record
        system.debug(Trigger.new);//op is defore details, null because in delete we use trigger.old
         //while facing this error check context variable
    }*/
    
  /*  public static void beforeDelete(){
        system.debug('before details');//op is  before details
        system.debug(Trigger.old);//(Account:{Id=0015g00000cOEwCAAW, IsDeleted=false, MasterRecordId=null, Name=trigercheck, 
                                    //RecordTypeId=0125g000000uwqdAAAetc ..
    }*/
    
    /* public static void beforeDelete(){
         system.debug('before details');
        system.debug(Trigger.old);
         
         //List<sobject> into List<Account>
         for(Account acc:(List<Account>)Trigger.old){//List of account
            acc.addError('unable to delete');
    }
     }*/
     public static void beforeDelete(List<Account> accountOldList){
       /*  system.debug('before details');
        system.debug(Trigger.old);
         
         //List<sobject> into List<Account>
         //for(Account acc:(List<Account>)Trigger.old){//List of account
         for(Account acc:accountOldList){
            acc.addError('unable to delete');
    }
     }*/
     }
}