/*
* @author : Prasanth
* @date   : 09/06/2023 -->day25 
* @description :  /get All accounts and return a list of accounts
* 
* */

public class AccountController {
    public static List<Account> getAllAccounts() {
      List<Account> listAccounts =[select 
                                   Id,
                                   Name,
                                   Rating 
                                   from Account LIMIT 5];
        
        
        return listAccounts;
    }
    
    /*********************************************************************************************/
   // get accounts based on rating will be given by the user(component)
    public static List<Account> getAllAccountsRating(String rating){
       List<Account> listAccounts =[select 
                                   Id,
                                   Name,
                                   Rating 
                                   from Account where Rating=:rating LIMIT 5];
        
        //variable binding in soql =:rating
        return listAccounts;
    }
  }