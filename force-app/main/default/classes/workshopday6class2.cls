public class workshopday6class2 {
    
    public static void insertaccount(string a,string b){
        account acc= new account();
        acc.name = a;
        system.debug('created account:'+acc.name);
        insert acc;
        system.debug('created id:'+acc.id);
        
        contact con = new contact();
        con.lastname = b;
        con.Accountid = acc.id;
        system.debug('created contact:'+con.lastname);
        insert con;        
    }
}