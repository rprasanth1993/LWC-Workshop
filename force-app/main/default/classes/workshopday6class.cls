public class workshopday6class {
    
    public account accountinsert(string a){
        account acc = new account();
        acc.name=a;
        system.debug('createdcontact:'+a);
        insert acc;
        return acc;
    }
    public static contact contactinsert(string b){
        contact con = new contact();
        con.lastname = b;
        system.debug('createdcontact:'+b);
        insert con;
        return con;
    }
}