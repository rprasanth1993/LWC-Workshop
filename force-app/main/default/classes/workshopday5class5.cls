public class workshopday5class5 {
    
    public void accountinsert(string a){
        account acc = new account();
        acc.name=a;
        system.debug('created account:'+a);
        insert acc;
       
        //return acc;
    }
    public void contactinsert(string b){
        contact con = new contact();
        con.lastname = b;
        system.debug('createdcontact:'+b);
        insert con;
    }
}