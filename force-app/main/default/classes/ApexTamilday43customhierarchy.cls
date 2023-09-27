/*
* @author : Prasanth
* @date   : 09/07/2023 -->day43
* @description : custom setting-hierarchy
* 
* */
public class ApexTamilday43customhierarchy {
    
    public static Integer calculateCommission(Id leadId){
        
        integer commission = 0; // tis we used in 2 rd step
        //1.get lead generator record
        List<lead> ltId = [select Id,Lead_generator__c from Lead where Id =:leadId];
        system.debug('lead records:'+ltId);
        
        if(!ltId.isEmpty()){
            //2.profile id,name
            //in user object profile ave ave relationship
            List<user> listUser = [select Id,Name,profileId,Profile.Name from user where Id =:ltId[0].Lead_generator__c];
            system.debug('user records:'+listUser[0].Profile.Name);
            if(!listUser.isEmpty()){
             commission = Integer.valueOf(LeadCommission__c.getInstance(listUser[0].ProfileId).commission__c); 
            }
        }
        
        return commission;
    }
}