@isTest
public class AccountTestClass {
    static testmethod void demoDescription(){ //@isTest static void demoDescription
        Account acc = new Account();
        acc.Name = 'demoiew';
        acc.Description = 'tfdfg';
        insert acc;
    }
    
     static testmethod void demoDescription2(){
        List<Account> acclist = new List<Account>();
           
        Account acc = new Account();
        acc.Name = 'test';
        acc.Description = 'demo check';
        acc.Rating = 'cold';
        acc.AnnualRevenue = 300;
        insert acc;
        
        Account acc1 = new Account();
        acc1.Name = 'd1';
        acc1.Description = 'demo check';
        acc.Rating = 'Warm';
        acc1.AnnualRevenue = 200;
        insert acc1;
        acclist.add(acc);
        acclist.add(acc1);
        //AccoutBeforeInsert.demoDescription2(acclist);//handler classname.handler class method();
        //it's not need because,we are using handler class trigger will take care of that.
    }
  
    
    static Testmethod void fieldUpdate(){
        Map<Id,Account> oldmap = new Map<Id,Account>();
        Account acc = new Account();
        acc.Name = 'mapusing';
        acc.Rating = 'Hot';
        insert acc;
        oldmap.put(acc.Id,acc);
        
        Map<Id,Account> newmap = new Map<Id,Account>();
        Test.startTest();
        acc.Rating = 'Cold';
        acc.Active__c = 'No';
        update acc;
        
        //oldmap.put(acc.Id,acc);///here is updating the same old,here we can't use newmap
       // AccoutBeforeInsert.fieldUpdateMap(oldmap,newmap);
        Test.stopTest();
        system.assertEquals('No',acc.Active__c);
    }
     
    @isTest static void demoDescription3(){
        Account acc = new Account();
        acc.Name = 'demoinsert check';
        acc.Description = 'tfdfg';
        insert acc;
    }
    
    static Testmethod void deletebeforescenario(){
        List<Account> accList = new List<Account>();
        Account acc = new Account();
        acc.Name = 'demo del';
        acc.Active__c = 'Yes';
        accList.add(acc);
        insert accList;
        try{
        delete acclist;
        }
        catch (Exception e){            
        }
              
    }
    
   /* static Testmethod void demoDescription4(){
       List<Account> acList = new List<Account>();
        Account acc = new Account();
        acc.Name = 'Prasanth';
        acc.Phone = '356243';
        acList.add(acc);
        Test.startTest();
        insert acc;
        Test.stopTest();
        contact  con = new contact();
        con.AccountId = acc.Id;
        con.Phone = acc.Phone;        
        AccoutBeforeInsert.demoDescription4(acList);//handler classname.handler class method(acList); //empty list variable name
    }*/
    
    @isTest static void demoDescription4Map(){
        
        Map<Id,Account> mapacc = new Map<Id,Account>();
        Account acc = new Account();
        acc.Name = 'Check map account';
        acc.Phone = '55766464';
        acc.Type = 'Prospect';
        insert acc;
        mapacc.put(acc.id,acc);
        
        List<Contact> conlist = new List<Contact>();
        Contact con = new Contact();
        con.LastName = 'mapupdate';
        con.AccountId = acc.Id;
        insert con;
        
        Test.startTest();
        acc.Phone ='4563'; 		 
       // update con;    
        update acc;  
        //AccoutBeforeInsert.demoDescription4(mapacc);
        Test.stopTest();
        
        system.assertEquals('4563', acc.Phone);///update phone value and the field name with variable
    }
    
    static Testmethod void afterdelscenario(){
        List<Account> acclist = new List<Account>();
        Account acc = new Account();
        acc.Name = 'rizwana';  
        insert acc;
        acclist.add(acc);
        
        
    //  List<opportunity> opplist = new List<opportunity>();  
        Opportunity opp = new opportunity();
        opp.AccountId = acc.Id;
        opp.Name = 'rizaccountstage';
        opp.StageName = 'Prospecting';
        opp.CloseDate = Date.newInstance(2022, 07, 05);        
 		//insert opplist;
 		insert opp;
            
        Test.startTest();
        Delete acclist;
        Test.stopTest(); 
    }    
}