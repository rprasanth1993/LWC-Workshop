/*
* @author : Prasanth
* @date   : 11/08/2023 -->day45
* @description : Apex test Class
* 
* */

@isTest
public class ApexTamilday45Test {

    //beginner level
    /*@isTest
    static void doTest(){
        ApexTamilday45.doCommission(3000,'Hot');
        ApexTamilday45.doCommission(4000,'Cold');
    }*/
    
   /**********************************************************************************************************************/
    //use separate method to each operation..for each method based on class logic what we implement,we can execute 
    
   /* @isTest
    static void doTestHot(){
        ApexTamilday45.doCommission(3000,'Hot');
    }
    
    @isTest
    static void doTestCold(){
        ApexTamilday45.doCommission(4000,'Cold');
    }*/
    
  /**********************************************************************************************************************/
    
   /* system.assert
   --it's used to comparre two values

   system.assertEquals(expected values,actual value,'error msg')
 
*/
    //using system.assert in test class..this is best way
    //system.assert(expected value,actual value,'error msg')
    //so for using test class it should return the value in normal class so we are using return statement
    
    //Note: very important
     // without system,assertequals test class can run and pass the value ,can move to production
     // but for better practice,check negative scenario and logical issues we used system.assert
    @isTest
    static void doTestHot(){
        double com =ApexTamilday45.doCommission(3000,'Hot');
        system.assertEquals(900, com, 'calculation wrong');
    }
    
    @isTest
    static void doTestCold(){
       double com = ApexTamilday45.doCommission(4000,'Cold');
       system.assertEquals(800, com, 'calculation wrong');
    }
    
    /**********************************************************************************************************************/
    
    //very important we don't use this real time.it will affect the entire data record in org.
    //to get the org data... just for an example don't try in real time
   /* @isTest(SeeAllData=True)
    public static void doTest(){
        system.debug([select Id,Name from Account]);
    }*/
}