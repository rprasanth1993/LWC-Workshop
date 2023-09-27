public class asynchday2future {

    @future
    public static void futuremethod(string jsonString){
        //storing in list
        //json.deserialize(jsonString, System.apexType)..system.apextype we used List<account>.class
       List<Account> accList = (List<Account>)json.deserialize(jsonString, List<Account>.class);
        system.debug(accList);
    }
}