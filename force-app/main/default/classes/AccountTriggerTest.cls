@isTest
public class AccountTriggerTest {
    
    @isTest static void TestAccountDeleteWithContact()
    {
        Account acc = new Account(name='Test Account');
        insert acc;
        Contact con = new Contact();
        con.LastName='Test Contact';
        con.AccountId=acc.Id;
        insert con;
        
        Test.startTest();
        Database.DeleteResult dr = Database.delete(acc,false);
        Test.stopTest();
        
        List<Database.Error> errList = dr.getErrors();
        system.assertEquals('Unable to delete account with contact',errList[0].getMessage());
    }
}