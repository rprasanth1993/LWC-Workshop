trigger practiceacc on Account (after update){
    List<contact> ctlt = new List<contact>();
    set<Id> st = new set<Id>();
    for(Account acc:Trigger.new){
        st.add(acc.id);       
    }
List<contact> ct =[Select Id,Name,Phone from contact where Accountid in:st];
    for(Account obj:Trigger.new)
    {
        for(Contact con:ct)
        {
                con.phone = obj.Phone;
                ctlt.add(con);               
        }    
    }    
    update ctlt;
}