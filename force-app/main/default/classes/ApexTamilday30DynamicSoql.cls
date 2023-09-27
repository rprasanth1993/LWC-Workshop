/*
* @author : Prasanth
* @date   : 16/06/2023 -->day30 and 31 continuation
* @description : Dynamix soql
* 
* */
public class ApexTamilday30DynamicSoql {
    
    public static void accountDynamic(String fields){
        //ref
        // select Id,name from Account
        
        //instead of below we aer passing it directly in parameter.use if this based on user requirment fields value we can get
       // string fields = 'Id,Name';// taking the field values
        String queryBuild = 'select '+ fields +' from Account'; //it's is construcingg in run time only
        system.debug('query construct:'+queryBuild);
        
        List<Account> accountList = Database.query(queryBuild);
        system.debug('dynamic soql:'+accountList);
    }
    
      /****************************************************************************************************************************/ 
    //object details giving in dynamic but make sure all fields should be in the corresponding object
    
    public static void accountDynamic(String fieldsObject,string ObjectName){
        //ref : 
        // select Id,name 
        
        //instead of below we aer passing it directly in parameter.use if this based on user requirment fields value we can get
       // string fields = 'Id,Name';// taking the field values
        String queryBuild = 'select '+ fieldsObject +' from '+ObjectName; //it's is construcingg in run time only
        system.debug('query construct:'+queryBuild);
        
        List<Account> accountList = Database.query(queryBuild);
        system.debug('dynamic soql:'+accountList);
    }
    
     /****************************************************************************************************************************/ 
    //object details giving in dynamic but make sure all fields should be in the corresponding object
    // but it will give the particular object we access all object we need change 
    //which we want to access all change te list of List<object> into List<sobject>
    
    public static void accountDynamicObject(String fieldsObject,string ObjectName){
        //ref : 
        // select Id,name 
        
        //instead of below we aer passing it directly in parameter.use if this based on user requirment fields value we can get
       // string fields = 'Id,Name';// taking the field values
        String queryBuild = 'select '+ fieldsObject +' from '+ObjectName; //it's is construcingg in run time only
        system.debug('query construct:'+queryBuild);
        
        //now we are changin into which mean we can access any object wit coressponding values
        List<sObject> accountList = Database.query(queryBuild);
        system.debug('dynamic soql:'+accountList);
    }
    
      /****************************************************************************************************************************/ 
    //account binding in soql query
    
    public static void accountDynamicBinding(string name){
        
        string query ='select Id,Name from account where Name=:name';
        system.debug('query result:'+query);
        List<Account> accountRecord = Database.query(query);
        system.debug('account result:'+accountRecord);
        
        
    }
    
    /****************************************************************************************************************************/ 
    //day 31 continuation
    //sobject
    
    public static void dynamicSobject(string fieldName,string objectName){
        List<sobject> queryBuild =DataBAse.query('select '+ fieldName +' from '+ objectName);
        system.debug('query record:'+queryBuild);
        for(sobject objectRecord:queryBuild){
            system.debug('record details:'+objectRecord.get(fieldName));
        }
    }
}