trigger testphoneaccount on Account (after insert,after update) {
    List<contact> ctlt = new List<contact>();
    Map<Id,Account> mapacc = new Map<Id,Account>();
    for(Account acc:Trigger.new){
        if(acc.Type =='Prospect'){
            mapacc.put(acc.id,acc);
        }
    }
    
    Map<Id,contact> ct = new Map<Id,contact>([select Id,name,Accountid,phone from contact where AccountId in:mapacc.keySet()]);
    
    for(contact obj:ct.values()){
        obj.phone = mapacc.get(obj.AccountId).phone;
        ctlt.add(obj);
        }
    update ctlt;
}