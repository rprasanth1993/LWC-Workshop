trigger AccountTrigger on Account (before insert,after insert,before update,after update,before delete,after delete,after undelete) {
    
    //dont allow to delete account if it has active contact
    //
/*    switch on Trigger.operationType
    {
        when BEFORE_DELETE{
            
            Set<Id> accId = new Set<Id>();
            
            for(Account acc:Trigger.old){
                accId.add(acc.Id);
            }
            
            List<Account> accList = [Select Id,Name from Account where id in (Select AccountId from contact) and Id in:accId];
             
            for(Account acc:acclist)
            {
                Trigger.oldMap.get(acc.Id).addError('unable to delete the contacts');
            }
        }
    }*/
    
    if((Trigger.isBefore && Trigger.isInsert) || (Trigger.isBefore && Trigger.isUpdate)){
        system.debug('*****************');
        AccountHandlerClass.accountBeforeUpdate(Trigger.new);
    }
}