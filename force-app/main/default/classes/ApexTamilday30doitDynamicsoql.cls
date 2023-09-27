/*
* @author : Prasanth
* @date   : 15/06/2023 -->day30
* @description : do it yourself task --Dynamic soql
* 
* */
public class ApexTamilday30doitDynamicsoql {

    //parameter object  name,field Name(List)
    //o/p:records with fields from object passed a paramter
    
    public static void dynamicSoqlObject(String ObjectName,List<String> fieldName){ 
        string queryBuild = 'select '+ string.join(fieldName,',') + ' from '+ ObjectName;
        system.debug('query construct:'+queryBuild);
        List<Sobject> objectRecord = Database.query(queryBuild);
        system.debug('record details:'+objectRecord);
    }
    
    /****************************************************************************************************************************/ 
    // parameter object  name,field Name(List),search fields,operator,value from anonymous window
    
    public static void dynamicSoqlParam(String ObjectName,List<string> fieldName,String searchField,String Operator,String Value){
        string valueCheck = Value.isNumeric()?Value:'\''+Value+'\'';
        
        //here true part whatever the field value it will come,false part we are capturing the user enter value
        //it migt string we using in te backslash..egg:string st ='\'prasanth\''; ..here we are takin the particular value of name 
        //// our case '\''+Value+'\''...we are capturing exact value user entered so using backslashes
        
        system.debug('searchField1:'+valueCheck);
        string queryBuild ='select '+string.join(fieldName, ',')+ ' from '+ ObjectName +' where '+searchField + ' '+Operator+ valueCheck; 
        system.debug('query construct:'+queryBuild);
        List<Sobject> objectRecord = Database.query(queryBuild);
        system.debug('record details:'+objectRecord);
    }
    
}