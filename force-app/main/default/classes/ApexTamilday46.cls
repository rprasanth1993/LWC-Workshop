/*
* @author : Prasanth
* @date   : 15/08/2023 -->day46
* @description : Apex test Class -->Test setup
* 
* */
public class ApexTamilday46 {

    public static List<Account> doAccountRating(String rating){
        List<Account> listAccount = [select Id,Name,Rating from Account where Rating =:rating];
        return listAccount;
    }
}