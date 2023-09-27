/*
* @author : Prasanth
* @date   : 15/06/2023 -->day29
* @description : do it yourself task
* 
* */
public class Apextamilday29doitSoql {
    //create a map to store the account rating and number of records avaible in each rating using aggregate query to count
    
    public static void displayAccountRating(){
        //List<AggregateResult> accList = [select count(Id) accountCount,Rating from Account where Rating!=null group by Rating];
        // system.debug('account list:'+accList);
        
        Map<Id,AggregateResult> accountMap = new Map<Id,AggregateResult>([select Rating Id,count(Id) accountCount
                                                                          from 
                                                                          Account where Rating!=null group by Rating]);
        system.debug('record check:'+accountMap);
        
        for(AggregateResult resultvalue:accountMap.Values()){
            system.debug('value of result:'+resultValue);
        }
    //checking keyset it not accept in aggregate result
    }
    
    /****************************************************************************************************************************/
    //get the blood donor of the O+ve etc..
    public static void displayBloodGroup(){
        Map<Id,AggregateResult> bloodMap = new Map<Id,AggregateResult>([select Blood_Group__c Id,Count(Id) bloodCount 
                                                                        from Blood_Donor__c
                                                                        where Blood_Group__c<>NUll
                                                                        group by Blood_Group__c]);
        system.debug('blood record:'+bloodMap);
        //bloodgroup acting as id as alias ..because we are using bloodgroup values like a+ve,B+ve,etc.. as Id here
        //we can't give other value instead of Id 
        //for using map alias name should be name as ID only
        for(AggregateResult bloodRecord:bloodMap.Values()){
            system.debug('value of bloodGroup:'+bloodRecord);
            system.debug('bloodGroup count:'+bloodRecord.get('Id')); // we can't give other value instead of Id because of the key,y 
        }
    }
    /****************************************************************************************************************************/
    
    // get an opportuniy having more than one record wit starts with A
    public static void displayOpportunity(){
        List<AggregateResult> opportunityRecord =[select Count(Id) accountdata, Name from Opportunity where Name LIKE 'U%' group by Name having count(Id)>1];
        for(AggregateResult opp:opportunityRecord){
            system.debug('opprecord name:'+opp);
            system.debug('opprecord name:'+opp.get('Name'));
        }
    }
}