trigger practicedemo on Account (after update) {
    
    Set<Id> st = new Set<Id>();
    for(Account acc:Trigger.new){
        st.add(acc.id);
    }
    
     List<Contact> lt =[Select AccountId,Phone from Contact where id In:st];
    for(Account alt:Trigger.new){
        for(Contact ct:lt){
            alt.Phone = ct.Phone;
        }        
    }
}