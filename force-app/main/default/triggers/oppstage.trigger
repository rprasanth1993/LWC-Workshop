trigger oppstage on Opportunity (before update) {
    /*List<opportunity> opt = new List<opportunity>();
    for(opportunity op:Trigger.new){
           
       Map<Id,opportunity> mopp = new Map<Id,opportunity>();
        opportunity ot= mopp.get(op.id);
            if( ot.StageName=='Qualification' && op.StageName=='Closed Won'){
                op.LeadSource='Web';
            }
        }*/
    //Map<Id,opportunity> mopp = Trigger.oldMap;
    Map<Id, Opportunity> mOpp = (Map<Id, Opportunity>) Trigger.oldMap;
    for(opportunity op:Trigger.new){
           opportunity ot= mopp.get(op.id);
            if(ot.StageName=='Qualification' && op.StageName=='Closed Won'){
                op.LeadSource='Web';
            }
        }
    }