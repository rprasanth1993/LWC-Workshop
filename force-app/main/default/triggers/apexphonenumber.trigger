trigger apexphonenumber on Account (after insert,after update) {
    
    List<Contact> aclist = new List<Contact>();
    set<Id> acid = new set<Id>();
    for(Account acc:Trigger.new){
        acid.add(acc.Id);
    }
    
    List<Contact> conlist =[select Id,Name,Phone from contact where AccountId in:acid];
    for(Account at:Trigger.new){
        for(Contact con:conlist){
            con.Phone=at.Phone;
            aclist.add(con);
        }
    }
    if(aclist.size() > 0){
        update aclist;
    }
}