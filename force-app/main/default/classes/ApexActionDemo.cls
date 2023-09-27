public class ApexActionDemo {

 /*   @InvocableMethod(label='split checkbox items' Description='spliting the checkbox values')
    public static List<List<String>> getCheckBoxGroup(List<String>selectedValues)
    {
        List<String> splitValues = selectedValues[0].split(';');//index 0,1,2 storing list as collection so using list<list>
        
        List<List<String>> returnList = new List<List<String>>();
        returnList.add(splitValues);
        return returnList;
    }*/
    
     @InvocableMethod(label='get accoutn from apex' Description='get account from apex')
    public static List<List<Account>> getCheckBoxGroup(List<InputData>params)
    {
        string rating = params[0].rating;
        List<String> ratingCollection = rating.split(';');//index 0,1,2 storing list as collection so using list<list>
        string Industry = params[0].Industry;
        
        List<List<Account>> accountcollection = new List<List<Account>>();
         accountcollection.add([select Id,Name,Rating,Industry from Account 
                                where rating in:ratingCollection and Industry =:Industry ]);
   
        return accountCollection;
    }
    
    public class InputData
    {
        @InvocableVariable(label = 'Rating' description = 'Account Rating')
        public String rating;
        
        @InvocableVariable(label = 'Industry' description = 'Account Industry')
        public String Industry;
    }
}