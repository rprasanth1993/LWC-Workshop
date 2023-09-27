public class apextriggerday3accounthandler2 {
    
    public static void run(){
        //undelete is work only after undelete(trigger.new,trigger.newmap)
      if(trigger.isafter && trigger.isundelete){
          
          system.debug('Inside the undelete');//to check create a record in account and delete,
                                               //then recycle bin and restore it
          system.debug(trigger.newmap);
          
      }                                     
        if(trigger.isbefore && trigger.isinsert){
            beforeInsert();
            //apexday3accounttriggerhandler obj = new apexday3accounttriggerhandler();
            //obj.beforeInsert();
          }
                                       
         if(trigger.isbefore && trigger.isupdate){
                                           
          }
          if(trigger.isbefore && trigger.isdelete){
             //apextriggerday3accounthandler.beforeDelete(); 
             beforeDelete(Trigger.old);                             
          }
                                       
          if(trigger.isafter && trigger.isinsert){
                                           
          }
          if(trigger.isafter && trigger.isupdate){
           afterUpdate();                               
          }
    }
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
        /* system.debug('before details');
        system.debug(Trigger.old);
         
         //List<sobject> into List<Account>
         //for(Account acc:(List<Account>)Trigger.old){//List of account
         for(Account acc:accountOldList){
            acc.addError('unable to delete');
    }
     }*/
     }
}