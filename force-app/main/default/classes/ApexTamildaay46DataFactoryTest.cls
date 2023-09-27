/*
* @author : Prasanth
* @date   : 16/08/2023 -->day46
* @description : Apex test Class -->Test data factory
* 
* */

//for best practice one datafactory for entire project,we write all objects(loading data) records with different methods
//here we are loading the all data record for corresponding objects
@isTest
public class ApexTamildaay46DataFactoryTest {

    //below method we gonna use in other class so it must be with public
   public static List<Account> accountWithRating(Integer noOfRecords,String rating){
        List<Account> listAccount = new List<Account>();
        for(Integer count=1;count<=noOfRecords;count++){
            Account acc = new Account();
            acc.Name = 'TestDemo'+count;
            acc.Rating=rating;
            listAccount.add(acc);            
        }
        insert listAccount;
        return listAccount;
    }
}