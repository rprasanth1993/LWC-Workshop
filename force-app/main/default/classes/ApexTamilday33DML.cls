public class ApexTamilday33DML {
    
    public static string accountInsert(string name,String rating){
        Account acc = new Account();
        acc.Name=name;
        acc.Rating = rating;
        insert acc;
        return acc.Id;        
    }
    
    /***********************************************************************************************************************/
    public static string accountInsertName(string name,String rating){
        String recordId = 'unable to create record';
        if(name.length()>0){ // checking name as value or not
            Account acc = new Account();
            acc.Name=name;
            acc.Rating = rating;
            insert acc;
            recordId =acc.Id;    
        }
        return recordId; 
    }
}