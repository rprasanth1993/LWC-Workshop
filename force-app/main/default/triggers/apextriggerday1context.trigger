trigger apextriggerday1context on Account (before insert,after insert,before update,after update) {
    
    
    /*system.debug('before trigger:'+trigger.isbefore);
system.debug('inside the trigger');
system.debug('after trigger:'+trigger.isafter);*/
    
    /*system.debug('account inserted');

if(trigger.isbefore){   
system.debug('trigger 1st line');    
}
if(trigger.isafter){
system.debug('trigger 2nd line');
}*/
   // system.debug('Account inserted');
    
    /*if(trigger.isbefore && trigger.isinsert){   
        system.debug('trigger 1st line'); 
        system.debug(Trigger.new);
        system.debug(Trigger.newmap);
         for(Account s:Trigger.new){
            system.debug(s);//op is ..DEBUG|Account:{Id=null, IsDeleted=false, MasterRecordId=null, Name=testacc64,
             //Type=null, RecordTypeId=0125g000000uwqdAAA, ParentId=null, 
            system.debug(s.Id);//op is id is null
            system.debug(s.Name);// op is testacc64
         }
    }
    if(trigger.isbefore && trigger.isupdate){   
        system.debug('trigger 3rd line');    
    }
    if(trigger.isafter && trigger.isinsert){
        system.debug('trigger 2nd line');
        system.debug(Trigger.new);
        system.debug(Trigger.newmap);
        for(Account s:Trigger.new){
            system.debug(s);//op is Account:{Id=0015g00000cNpFIAA0, IsDeleted=false,
            //..MasterRecordId=null, Name=testacc64, Type=null, RecordTypeId=0125g000000uwqdAAA, ParentId=null
            system.debug(s.Id);//op id is display:0015g00000cNpFIAA0
            system.debug(s.Name);// op is name: testacc64
        }
    }
    if(trigger.isafter && trigger.isupdate){
        system.debug('trigger 4th line');
    }*/
    
    //when an account created create contact
   /* if(trigger.isafter && trigger.isinsert){
        for(Account acc:Trigger.new){
            
            contact con = new contact();
            con.LastName = 'triggercontactcheck';
            con.AccountId = acc.Id;
            insert con;//apex dml operation database
        }
    }*/
    
}