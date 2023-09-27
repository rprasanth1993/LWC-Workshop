@isTest
public class accountContactTestClass {
    
    @isTest
    public static void accContest(){
       Account acc1 = new Account();
        acc1.Name = 'shrivanicontactcheck';
        acc1.Phone = '98675432';
        insert acc1;
        system.debug(acc1);
        //Database.SaveResult res = Database.insert(acc1, false);
        //system.assertEquals('account created');
        //res.getErrors()[0].getMessage();
        
       /* Account acc2 = new Account();
        acc2.Name = 'accountPhonenull';
        //acc2.Phone = '346756454';
        insert acc2;
        system.debug(acc2);*/
     
        }
}