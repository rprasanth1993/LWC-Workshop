@RESTResource(urlMapping = '/v1/restShowDemo/')
global class rocksIntegration {

    //all records
    /*@httpGet
    global static List<Blood_Donor__c> restCheck(){
       // Map<string,string> bdparams = RestContext.request.params;
        //string bdId = bdparams.get('Id');
        List<Blood_Donor__c> bd = [select id,Name,Email_ID__c,Phone_no__c from Blood_Donor__c];
        
        return bd;
        
    }*/
    
    // this is for to get particualar record by using id
    @httpGet
    global static List<Blood_Donor__c> restCheck1(){
       Map<string,string> bdparams = RestContext.request.params;
        string bdId = bdparams.get('Id');
        List<Blood_Donor__c> bd = [select id,Name,Email_ID__c,Phone_no__c from Blood_Donor__c 
                                   where id =: bdId];
        
        return bd;
        
    }
    
    //delete the record
    
    @httpDelete
    global static string restCheckDelete(){
       Map<string,string> bdparams = RestContext.request.params;
        string bdId = bdparams.get('Id');
        List<Blood_Donor__c> bd = [select id,Name,Email_ID__c,Phone_no__c from Blood_Donor__c 
                                   where id =: bdId];
        
        delete bd;
        return 'Record deleted';
        
    }
    
    //insert the record
    @httpPost
    global static Blood_Donor__c restCheckInsert(string name){
     
        Blood_Donor__c bd = new Blood_Donor__c();
        bd.Name = name;
        insert bd;
        return bd;
        
    }
    
    //update the record by using id becuase to get the exact id
    @httpPut
    global static Blood_Donor__c restCheckUpdate(string name){
        
     Map<string,string> bdparams = RestContext.request.params;
        string bdId = bdparams.get('Id');

        Blood_Donor__c bd = new Blood_Donor__c();
        bd.Name = name;
        bd.Id = bdId;
        update bd;
        return bd;
        
    }
}