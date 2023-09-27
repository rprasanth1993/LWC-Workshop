@isTest
public class apexbasicsday13test { // instead of public we can private also
    
    @testsetup // even we have two methods testsetu method will call first
    public static void loadData(){
        List<Account> acclist = new List<Account>();
        Account obj1 = new Account(Name='Test data Account1',Industry='Education');
        Account obj2 = new Account(Name='Test data Account2',Industry='Education');
        Account obj3 = new Account(Name='Test data Account3',Industry='Finance');
        Account obj4 = new Account(Name='Test data Account4',Industry='Education');
        acclist.add(obj1);
        acclist.add(obj2);
        acclist.add(obj3);
        acclist.add(obj4);
        insert acclist;
    }
    
    @istest
    public static void doTest(){
        List<Account> lt = apexbasicsday13Accountcontroller.getAccountList();
        //system.debug(lt.size());
        system.assertEquals(4, lt.size(), 'Error in test');
        
       List<Account> ltInd = apexbasicsday13Accountcontroller.getAccountListbyIndutry('Education');
       system.assertEquals(3, ltInd.size(), 'Error in test');
        
         List<Account> ltInd1 = apexbasicsday13Accountcontroller.getAccountListbyIndutry('Agriculture');
        system.assertEquals(0, ltInd1.size(), 'Error in test');
    }
   /* @isTest//Now we can see the newly added account it can't show size is zero
    public static void DML(){
    List<Account> lt = [select id from Account];
    system.debug(lt.size());
        List<Account> lt1 = [select id from Account];
        List<Account> lt2 = [select id from Account];
        List<Account> lt3 = [select id from Account];
        system.debug(system.Limits.getQueries());
        
        Test.startTest();//start means it reset all start from first
         system.debug(system.Limits.getQueries());
         List<Account> lt4 = [select id from Account];
         system.debug(system.Limits.getQueries());
        Test.stopTest();
    }*/
    
    
   /* @isTest(seeAllData=TRUE)//without 'seeAllData=True we can't see the org data when checking log it show only zero..so added seealldata=true
    //Eventhough it's not best practice to do.....it's not best to do..because if we delete the org record we can't use that so avoid that creating own data record
    public static void DML(){
    List<Account> lt = [select id from Account];
    system.debug(lt.size());
    }*/
   /* @istest
    public static void bignumbertest(){
        Integer result = apexbasicday13.bigfind(100,150,200);
        system.assertEquals(200,result,'no problem in result'); //system.assertEquals(expected, actual, msg).1.in this we are 
        //..expecting a expected result 200,if i gv 100 the test will fail..but the condition will satisfy in class it mark in blue
        //..moreove we need to check three values eg:x,y,z here we check z 2.result is variable we storing 3.msg
        
        result = apexbasicday13.bigfind(500,150,200);
        system.assertEquals(500, result, 'no problem in result');//checking x
        
        result = apexbasicday13.bigfind(500,750,200);
        system.assertEquals(750, result, 'no problem in result');//checking y
        
        apexbasicday13.display();
        
    }*/    
}