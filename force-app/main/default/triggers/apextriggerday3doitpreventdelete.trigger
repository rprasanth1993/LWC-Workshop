//prevent deletion of account record if it has parent account associated with it 
trigger apextriggerday3doitpreventdelete on Account (before delete) {
    
   // apextriggerday1preventhandler.preventdelete(Trigger.old);
       /*for(Account acc:Trigger.new){
        if(acc.ParentId!=null)
            acc.addError('cannot delete the record');
    }
    }*/
}