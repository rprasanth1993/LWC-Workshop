trigger contactTrigger on Contact (before insert) {
    
    TriggerDispatcher.run(new ContactTriggerService());

}