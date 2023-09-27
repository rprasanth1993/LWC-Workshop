public class workshopday6class1 {
    
    public static void insertaccount(){
        List<Account> lt = new List<Account>();
        for(integer i = 0;i<200;i++){
        Account acc = new Account();
        acc.name ='accountnamecheck2'+i;
        lt.add(acc);
    }
    insert lt;
    system.debug(lt);
        
    }
    
    public static void insertcontact(){
        List<contact> ct = new List<contact>();
        for(integer a = 0; a<175;a++){
            contact con = new contact();
            con.lastname ='contactcreated'+a;
            ct.add(con);
        }
        insert ct;
    }
}