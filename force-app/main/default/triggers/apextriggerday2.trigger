trigger apextriggerday2 on Account (before insert,before update,before delete,after insert,after update,after delete) {
              
           /* if(trigger.isbefore && trigger.isdelete){
                for(Account acc:Trigger.old){
                    acc.addError('you cannot delete');//add error it will display the message..can't delete the record
                                                      //after delete it will delete the record even the message displays          
                }                                  
                                               
            }*/
            
          // when record created or edited,update annual revenue to 100$ if its null and rating is hot
            if(trigger.isbefore && trigger.isinsert || trigger.isupdate){
                for(Account ac:Trigger.new){
                    if(ac.AnnualRevenue==null && ac.Rating=='HOT')
                    //if(ac.AnnualRevenue==null && ac.Rating.equals('HOT'))
                        ac.AnnualRevenue=100;
                }
            }
            
           /* if(trigger.isafter && trigger.isupdate){
                for(Id id:Trigger.newmap.keyset()){//while check update the record..for check go to log..selected recent one..debug
                    system.debug('key:'+id);//op is key:0015g00000cNmB4AAK
                    system.debug('values:'+Trigger.newmap.get(id));// is DEBUG|values:Account:{Id=0015g00000cNmB4AAK, IsDeleted=false, MasterRecordId=null, Name=testacc56, Type=null, RecordTypeId=0125g000000uwqdAAA, etc..
                }
            }*/
            
            //scenario soql inside
            //if the rating is changed from hot to cold and annual revenue is blank update account active status = 'NO'
            /*if(trigger.isbefore && trigger.isupdate){
                Map<Id,Account> oldRecords = Trigger.oldMap;//oldrecords---hot
                for(Account acc:Trigger.new){//traverse newrecords--cold
                 Account oldacc = oldRecords.get(acc.Id);// geting the corresponding values which changes from hot to cold
                    if(oldacc.Rating.equals('Hot') && acc.Rating.equals('Cold')
                       && acc.AnnualRevenue==null){
                           acc.Active__c='No';
                       }
                }
                  
            }*/
                           
        }