public class apexbasicsday10doitsoql {
    
   /*public static void displayopp(){
        List<Opportunity> opp = [select id,Name from Opportunity];
        for(Opportunity ot:opp){
            system.debug('Opportunity values:'+ot);
        }
    }*/
    
  /*public static void amountGreater(Integer a){
        List<Opportunity> opp1 =[select id,Name from Opportunity where amount>=:a];
        for(Opportunity ot1:opp1){
            system.debug('passed amount:'+ot1);//op is passed amount:Opportunity:{Id=0065g00000EXBamAAH, 
			                                  //Name=: wf case5 test: 2021-10-26, RecordTypeId=0125g000000uwjSAAQ, CurrencyIsoCode=USD}
											  //etc..
        }
    }*/
    
    /*public static void countOpp(string a){
        List<AggregateResult> opp2 =[select count(Id) Totalstagecount,StageName from Opportunity where StageName=:a group by StageName];
        for(AggregateResult ot2:opp2){
            system.debug(ot2);// op is AggregateResult:{Totalstagecount=27, StageName=Closed Won}
        }
    }*/
    
   /*public static void leadstageName(string a,string b){
       
        List<Opportunity> opp3 = [select Id,Name,LeadSource,StageName from Opportunity 
                                  where LeadSource=:a and StageName=:b];
        for(Opportunity ot3:opp3){
            system.debug(ot3);//op is Opportunity:{Id=0065g000003D7rJAAS, Name=Burlington Textiles Weaving Plant Generator, LeadSource=Web, StageName=Closed Lost}
            system.debug('leadsource vaules:'+ot3.LeadSource);// op is leadsource vaules:Web
             system.debug('stagename values:'+ot3.StageName);// op is stagename values:Closed Lost
        }
    }*/
    
    public static void nameStarts(string a){
        List<opportunity> opp4 = [select Id,Name from Opportunity where name like:a];
        for(opportunity ot4:opp4){
            system.debug(ot4);//op is Opportunity:{Id=0065g00000EWtKJAA1, Name=practice, CurrencyIsoCode=USD}
			                  // op is Opportunity:{Id=0065g00000EWtJRAA1, Name=practice 2, CurrencyIsoCode=USD}
							  // etc..
        }
    }
    
   /* public static void sumAmount(String a){
        List<AggregateResult> opp5 = [select sum(Amount) TotalAmount,StageName from Opportunity where StageName =:a Group by StageName];
        for(AggregateResult ot5:opp5){
            system.debug(ot5);//// ops is AggregateResult:{TotalAmount=587650.0, StageName=Closed Lost}
        }
    }*/
}