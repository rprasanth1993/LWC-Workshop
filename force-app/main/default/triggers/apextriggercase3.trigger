// create a custom field number of locations on account object
// write a trigger to create the number of contacts which are equal to
// the number which we will enter in the number of locations field on the account object
trigger apextriggercase3 on Account (after insert) {
    
    List<Contact> con = new List<Contact>();
    
    for(Account acc:Trigger.new){
        
        for(Integer a = 1;a <acc.NumberofLocations__c;a++){
            contact ct = new contact();
            ct.AccountId = acc.id;
            ct.LastName = 'testcon' + a;
            con.add(ct);
        }
    }  
    insert con;
}