trigger practicetrigger4 on Account (before insert,after insert,before update,after update,before delete,after delete) {
    
    public static void run(){
        
        
        switch on Trigger.operationtype{
            when AFTER_UPDATE{
                system.debug('inside clear the event trig');
                system.debug(Trigger.newmap);
            }
        }
    }
}