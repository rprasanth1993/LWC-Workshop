//here we following from day1 so this day in video is day4
trigger apextriggerday3 on Account (before insert,before update,before delete,after insert,
                                   after update,after delete,after undelete) {
  //undelete is work only after undelete(trigger.new,trigger.newmap)
    /*  if(trigger.isafter && trigger.isundelete){
          
          system.debug('Inside the undelete');//to check create a record in account and delete,
                                               //then recycle bin and restore it
          system.debug(trigger.newmap);
          
      }                                     
        if(trigger.isbefore && trigger.isinsert){
            apextriggerday3accounthandler.beforeInsert();
            //apexday3accounttriggerhandler obj = new apexday3accounttriggerhandler();
            //obj.beforeInsert();
          }
                                       
         if(trigger.isbefore && trigger.isupdate){
                                           
          }
          if(trigger.isbefore && trigger.isdelete){
             //apextriggerday3accounthandler.beforeDelete(); 
             apextriggerday3accounthandler.beforeDelete(Trigger.old);                             
          }
                                       
          if(trigger.isafter && trigger.isinsert){
                                           
          }
          if(trigger.isafter && trigger.isupdate){
            apextriggerday3accounthandler.afterUpdate();                               
          }*/
                                       
         //this for apextriggerday3accounthandler2 same way just changing the record all trigger operations in class
         //here only all functions
         //apextriggerday3accounthandler2.run();
                                                                             
}