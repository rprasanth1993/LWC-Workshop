public class soql4 {

    public static void display(){
        //child to parent----contact is child,account is parent(both are standard object)
        /*List<contact> ltcon = [Select Id,Lastname,Account.Name from contact];
        for(contact a:ltcon){
            system.debug(a);
            system.debug(a.Account.Name);
        }*/
        
        //it's working(my system) becasue i need to crreate object and reationship we don;t have relationship in 
        List<Case_List__c> ltmep = [Select Id,Case_Last_Name__c,
                                  Patient__r.Patient_Last_Name__c
                                  from Case_List__c];
        for(Case_List__c b:ltmep){
            system.debug(b);
            system.debug(b.Patient__r.Patient_Last_Name__c);
        }
    }
}