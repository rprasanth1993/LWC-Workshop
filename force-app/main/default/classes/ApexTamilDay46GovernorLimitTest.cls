@isTest
public class ApexTamilDay46GovernorLimitTest {

    @isTest
    static void doAccountRating(){
        Test.startTest();
        system.debug(Limits.getQueries());
        List<Account> listAccount1 = [select Id from Account];
        List<Account> listAccount2 = [select Id from Account];
        List<Account> listAccount3 = [select Id from Account];
        system.debug(Limits.getQueries());
        Test.stopTest(); // resetting the governor limits here
        system.debug(Limits.getQueries());
        List<Account> listAccount4 = [select Id from Account];
        List<Account> listAccount5 = [select Id from Account];
        system.debug(Limits.getQueries());
    }
}