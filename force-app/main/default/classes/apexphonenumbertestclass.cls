@isTest
public class apexphonenumbertestclass {
    
    @isTest
    public static void accountphonecreation(){
        Account acc = new Account();
        acc.Name = 'prasanthphonetest';
        acc.Phone='345787';
        insert acc;
        
       /* contact con = new contact();
        con.AccountId = acc.ID;
        con.LastName = 'pppp';
        insert con; 
        acc.phone ='12345';
        update acc;*/
        
        List<contact> ctlt = new List<contact>();
        contact con = new contact();
        con.AccountId = acc.ID;
        con.LastName = 'pppp';
        ctlt.add(con);
        insert ctlt;
        acc.phone ='12345';
        update acc;
    }
}