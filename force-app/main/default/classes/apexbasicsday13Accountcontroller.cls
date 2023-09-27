public class apexbasicsday13Accountcontroller {

    
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountList(){
        return [select id,Name from Account];
    }
    
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountListbyIndutry(string Industry){
        return [select id,Name from Account where Industry =:Industry];
    }
}