public class workshopday8classblooddonor {
    
    public List<Blood_Donor__c> districtupdate(){
        List<Blood_Donor__c> bdonor = new List<Blood_Donor__c>();
        bdonor = [select id,name,District__c from Blood_Donor__c where District__c='chennai'];
        system.debug(bdonor);
        for(Blood_Donor__c acc:bdonor){
            acc.District__c='Dindigul';
            
        }
        update bdonor;
        system.debug('updated district:'+bdonor);
        return bdonor;
    }
}