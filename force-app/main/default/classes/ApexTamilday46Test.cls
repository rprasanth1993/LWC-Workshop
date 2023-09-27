/*
* @author : Prasanth
* @date   : 15/08/2023 -->day46
* @description : Apex test Class -->Test setup
* 
* */

@isTest
public class ApexTamilday46Test {

   /* @TestSetup
    static void loadData(){
        
        List<Account> listAccount = new List<Account>();
        Account obj1 = new Account(Name='Acc Demo1',Rating='Hot');
        listAccount.add(obj1);
        Account obj2 = new Account(Name ='Acc Demo2',Rating='Cold');
        listAccount.add(obj2);
        Account obj3 = new Account(Name='Acc Demo3',Rating='Hot');
        listAccount.add(obj3);
        insert listAccount;
    }
    
    //positive scenario
    @isTest
    static void ratingHot(){
       List<Account> accList = ApexTamilday46.doAccountRating('hot');
        //here hot record above we gave is 2 so we given the size is 2 and actual we don't so we give size here
        system.assertEquals(2, accList.size(), 'logic mistake');
    }
    
    //negative scenario
    @isTest
    static void ratingWarm(){
       List<Account> accList = ApexTamilday46.doAccountRating('warm');
        system.assertEquals(0, accList.size(), 'logic mistake');
    }*/
    
     /**********************************************************************************************************************/
    // Test Data Factory:
 /*   purpose of the data factory 
    --->eg: one scenario  i am creating the test by using TestSetup, for account object
      if another another also using the account class and he need to also build the account record by using testSetup
      so when using voidsetup everytime same object record are creating in test class so avoid this we are using TEST DATA FACTORY 
      when using this we have separate test class(loading all data for corresponding object) for datafactory and passing the value for in test class
*/
    @isTest
    static void ratingHot(){
        //below line we are calling the testdatafactory class and method
        ApexTamildaay46DataFactoryTest.accountWithRating(2,'hot');// data loading using factory class
       List<Account> accList = ApexTamilday46.doAccountRating('hot');
        //here hot record above we gave is 2 so we given the size is 2 and actual we don't so we give size here
        system.assertEquals(2, accList.size(), 'logic mistake');
    }   
    
    @isTest
    static void ratingWarm(){
        //below line we are calling the testdatafactory class and method
        ApexTamildaay46DataFactoryTest.accountWithRating(1,'warm');
       List<Account> accList = ApexTamilday46.doAccountRating('warm');
        //here hot record above we gave is 2 so we given the size is 2 and actual we don't so we give size here
        system.assertEquals(1, accList.size(), 'logic mistake');
    }   
}