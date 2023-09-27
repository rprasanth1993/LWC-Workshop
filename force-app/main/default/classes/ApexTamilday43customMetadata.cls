/*
* @author : Prasanth
* @date   : 09/07/2023 -->day43
* @description : custom metadata
* 
* */
public class ApexTamilday43customMetadata {
    
 public static Integer calculateCommissionMeta(Id leadId){
        
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
                
              string profileName = listUser[0].Profile.Name; //it custom:sales profile ==> custom_sales_profile
                // for system admin it's not needed..for this we used lead record id :00Q5g000001tYOOEA2
                // name Ms. Bertha Boxer
                // for checking purpose lead field user i changed the profile as custom profile for check as well as system admin
                profileName = profileName.remove(':');
                profileName = profileName.replace(' ','_');
                system.debug(profileName);
                
                Lead_Commission__mdt ltcommission = Lead_Commission__mdt.getInstance(ProfileName);
                if(ltcommission!=null){
                     commission = Integer.valueOf(ltcommission.commission__c);
                }
            
            }
        }
        
        return commission;
    }
}