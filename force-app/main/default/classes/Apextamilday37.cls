/*
* @author : Prasanth
* @date   : 02/07/2023 -->day37 with securtity
* @description : with security_enforced
* 
* */

//for this testing i unremoved the field access of phone in system admin profile
public class Apextamilday37 {

    public static void getAccount(){
       //  schema.SObjectType.Account.fiels.Phone.isAccessible() //it is boolean,we are checking the the present value have access permission or not
       //  if it permission it display true otherwise it is false
       //  isCreatable(),isUpdateable(),isDeleteable() --different methods
       
        if(schema.SObjectType.Account.fields.Phone.isAccessible()){
            List<Account> listAccount = [select Id,Name,Phone from Account WITH SECURITY_ENFORCED];
            system.debug('account record:'+listAccount);
        }
        else{
            List<Account> listAccount = [select Id,Name from Account WITH SECURITY_ENFORCED];
            system.debug('account record:'+listAccount);
        }
    }
    
}