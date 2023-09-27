trigger practicetrigger2 on Account (before insert,after insert,before update,after update,before delete,after delete){

    /*switch on Trigger.operationType
    {
        /*when BEFORE_DELETE
        {
            for(Account a:Trigger.old){
                a.addError('unable to delete');
            }
        }*/
       /*when BEFORE_INSERT{
            for(Account a:Trigger.new){
                if(a.AnnualRevenue==null && a.Rating.equals('Hot'))
                   a.AnnualRevenue=100;
            }
        }
        /*when BEFORE_UPDATE{
            for(Account a:Trigger.new){
                if(a.AnnualRevenue==null && a.Rating.equals('Hot'))
                   a.AnnualRevenue=100;
            }
        }*/
        /*when AFTER_UPDATE
        {
            for(Id id:Trigger.newmap.keyset())//record id
            {
                system.debug(id);
                system.debug(Trigger.newmap.get(id));
            }
        }*/
        
        /*when BEFORE_UPDATE{
            Map<Id,Account> oldrec = Trigger.oldmap;
            {
                for(Account acc:Trigger.new)
                {
                    Account oldacc = oldrec.get(acc.id);
                    if(oldacc.Rating.equals('Hot') && acc.Rating.equals('Cold') && acc.AnnualRevenue==null)
                    {
                        acc.Active__c ='No';
                    }
                   
                    
                }
                
            }
        }
    }*/
    
}