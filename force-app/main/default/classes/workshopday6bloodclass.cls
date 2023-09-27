public class workshopday6bloodclass {

    public static void blooddetails(){
        //public static Blood_coordination__c blooddetails(){
       
        Blood_Donor__c bdon = new  Blood_Donor__c();
        bdon.Name = 'bloodcheck3';
        bdon.Blood_Group__c = 'B+ve';
        insert bdon;
   		   
        
        Blood_request__c breq = new Blood_request__c();
        breq.Name = 'Rajcheck3';
        breq.Nature_of_treatment__c = 'Allopathiy';
        insert breq;
        
        
        Blood_coordination__c bcod = new Blood_coordination__c();
        bcod.Blood_Donor__c = bdon.id;
        bcod.Blood_request__c = breq.id;
        bcod.Name ='newcordinaator';
        insert bcod; 
        //return bcod;
    }
}