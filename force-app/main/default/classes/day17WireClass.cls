public  class day17WireClass {
    // for wire adapoter @auraEnabled in needed
//    if you are using wire method @AuraEnabled(cacheable = True)
// if the components get loaded(client) ..it will hit wiremethod in apex
// and data send back,it capture in the client side for catching the data,we have to give (cacheable=true)
//  for select query(eg:get data) use  cacheable=true 
// for dml operation don't give cacheable=true 
// for dml operation don't give.it should be cacheable=true
    @AuraEnabled(cacheable=true)
    public static List<Account> getaccount(){
        // we can ue this also..in this case we didn't store anything in list so we used return[select..]
        // both are okay
        // List<Account> ltacc =[ select id,name ...]
        // return ltacc
        return [
            select Id,Name,Phone
            from Account
        ];
    }

    // day18:
    @AuraEnabled(cacheable=true)
    public static List<Account> getaccountwithParam(Id recordId){
        return [
            select Id,Name,Phone from Account where Id=:recordId
        ];
    }
}