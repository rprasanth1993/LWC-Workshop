trigger practicetrigger3 on Account (before insert,after insert,before update,after update,before delete,after delete) {

    switch on Trigger.operationtype{
        when AFTER_UNDELETE{
            system.debug('inside clear the event trig');
            system.debug(Trigger.newmap);
        }
    }
}