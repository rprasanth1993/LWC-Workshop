/*
* @author : Prasanth
* @date   : 04/07/2023 -->day39 
* @description : wrapper class another way
* 
* */
public class ApexTamilday39wrapper2 {
    
    public static DataWrapper getAllList(){
        return new DataWrapper();
    }
    
    public class DataWrapper{
        public List<Account>accList;
        public List<Contact>conList;
        public List<Opportunity>oppList;
        
        public DataWrapper(){
            accList =[select name from Account];
            conList =[select name from Contact];
            oppList =[select name from Opportunity];
        }
    }
}