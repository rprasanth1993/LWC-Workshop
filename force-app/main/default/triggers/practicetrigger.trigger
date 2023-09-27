trigger practicetrigger on Account (before insert,after insert,before update,after update) {

   //system.debug('before:'+trigger.isbefore);
   //system.debug('after:'+trigger.isafter);
    /*system.debug('for 2nd line');
    if(trigger.isbefore){
        system.debug('for 1st line');
    }
    if(trigger.isafter){
        system.debug('after for 2nd line');
    }
    if(trigger.isbefore && trigger.isinsert){
        system.debug('for 1st line');
    }
    if(trigger.isafter && trigger.isupdate){
        system.debug(' after for 2nd line');
    }*/
    
    /*system.debug('for 2nd line');
    
    if(trigger.isafter){
        system.debug('after for 2nd line');
    }
    if(trigger.isbefore && trigger.isinsert){
        system.debug('for 1st line');
    }
    if(trigger.isafter && trigger.isinsert){
        system.debug(' after for 2nd line');
    }*/
    //opperation type
    
    /*switch on Trigger.operationType
    {
        when BEFORE_INSERT{
            system.debug('Its bef insert');
        }
        when BEFORE_UPDATE{
            system.debug('Its bef update');
        }
        when AFTER_INSERT{
            system.debug('Its aft insert');
        }
        when AFTER_UPDATE{
            system.debug('Its aft update');
        }
    }*/
    
    /*switch on Trigger.operationType
    {
        when BEFORE_INSERT{
            system.debug('Its bef insert');
            system.debug(Trigger.new);
            system.debug(Trigger.newmap);
            for(Account s:Trigger.new) // account is the name above the 1st line we gave
            {
                system.debug(s);
                system.debug(s.id);
                system.debug(s.name);
                
                s.AnnualRevenue= 15000;
            }
        }
        when AFTER_INSERT{
            system.debug('Its aft insert');
            system.debug(Trigger.new);
            system.debug(Trigger.newmap);
            for(Account s:Trigger.new){
                system.debug(s);
                system.debug(s.id);
                system.debug(s.name);
                
                contact c = new contact();
                c.LastName = 'test trigger contact';
                c.AccountId = s.Id;
                insert c;
            }
        }
          when BEFORE_UPDATE{
             system.debug('Its bef update');
              system.debug(Trigger.new);
              system.debug(Trigger.newmap);
            }

        when AFTER_UPDATE{
            system.debug('Its aft update');
        }*/
    }