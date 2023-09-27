trigger AccountDescription on Account (before insert,before update,after insert,after update,before delete,after delete,after undelete) {
      
    if(Trigger.IsBefore && Trigger.IsInsert){
    AccoutBeforeInsert.demoDescription(Trigger.new);
    }
    
   if(Trigger.IsBefore && Trigger.IsUpdate){
    AccoutBeforeInsert.demoDescription2(Trigger.new);
    }
    
    if(Trigger.IsBefore && Trigger.IsInsert){
        
        AccoutBeforeInsert.preventDuplicate(Trigger.new);
    }
    
    if(Trigger.IsBefore && Trigger.IsDelete){
        AccoutBeforeInsert.demobeforedelete(Trigger.old);
    }
    
    /*if(Trigger.IsBefore && Trigger.IsUpdate){
       AccoutBeforeInsert.fieldUpdateMap(Trigger.oldMap,Trigger.newMap);
    }*/
    
    if(Trigger.IsAfter && Trigger.IsInsert){
        AccoutBeforeInsert.demoDescription3(Trigger.new);
    }
    
   /* if(Trigger.IsAfter && Trigger.IsUpdate){
        AccoutBeforeInsert.demoDescription4(Trigger.new);
    }*/
      if(Trigger.IsAfter && Trigger.IsUpdate){
        AccoutBeforeInsert.demoDescription4(Trigger.newMap);
    }
    
    if(Trigger.IsAfter && Trigger.IsDelete){
        AccoutBeforeInsert.afterdemodel(Trigger.old);
    }
    
    if(Trigger.IsAfter && Trigger.IsUnDelete){
      AccoutBeforeInsert.afterundel(Trigger.new);  
    }
}