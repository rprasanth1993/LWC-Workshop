trigger testaccount on Account (after insert,after update) {
  List<contact> ctlt = new List<contact>();
    Map<Id,Account> mapacc= new Map<Id,Account>();
    for(Account acc:Trigger.new){
        mapacc.put(acc.id,acc);       
    }

Map<Id,Contact> mapcon = new Map<Id,Contact>([Select Id,Name,AccountId,Phone from contact where Accountid in:mapacc.KeySet()]);
     
    for(Contact obj:mapcon.values()){
        
        obj.Phone=mapacc.get(obj.AccountId).Phone;
        ctlt.add(obj);
    }
    update ctlt;
   /* List<contact> ctlt = new List<contact>();
    set<Id> st = new set<Id>();
    for(Account acc:Trigger.new){
        st.add(acc.id);       
    }
Map<Id,Contact>  ct =new Map<Id,Contact> ([Select Id,Name,Phone from contact where Accountid in:st]);
    for(contact con:ct){
        con.Phone=ct.get(con.Id).Phone;
        ctlt.add(con);
    }
    update ctlt;*/
}