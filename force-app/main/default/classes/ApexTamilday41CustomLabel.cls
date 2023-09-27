/*
* @author : Prasanth
* @date   : 09/07/2023 -->day42
* @description : custom label
* 
* */
public class ApexTamilday41CustomLabel {

    public static Integer calculateCommission(Id leadId){
        integer commission = 0; // tis we used in 3 rd step
        //1.get lead generator record
        List<lead> ltId = [select Id,Lead_generator__c from Lead where Id =:leadId];
        system.debug('lead records:'+ltId);
        if(!ltId.isEmpty()){
           //2.profile id,name
           //in user object profile ave ave relationship
           List<user> listUser = [select Id,Name,profileId,Profile.Name from user where Id =:ltId[0].Lead_generator__c];
          system.debug('user records:'+listUser[0].Profile.Name);
            
            //3.commission calculation
            if(!listUser.isEmpty()){
                if(listUser[0].Profile.Name == 'System Administrator'){ //profile name
                    commission = Integer.valueOf(Label.salesrep);// custom label name
                }
                else if(listUser[0].Profile.Name == 'Custom: Marketing Profile'){
                    commission = Integer.valueOf(Label.marketing_profile);
                }
            }
        }
        return commission;
    }
}