//create the field "contact relationship"(checkbox) on contact object.
//create related object 'contact relationship' and lookup with contact
//when create a contact by checking checkbox-contact relationship,the contact relationship will create automatically for that contact 
trigger apextriggercases5 on Contact (after insert) {
    
    List<Contact_Relationship__c> conrel = new List<Contact_Relationship__c>();
    for(Contact ct:Trigger.new){
          if(ct.Contact_Relationship__c==TRUE){ // when we use if condition equal (==)condition
              
        Contact_Relationship__c con = new Contact_Relationship__c();
        
            con.Contact__c = ct.Id;
            con.Name = ct.LastName;
            conrel.add(con);
        }       
        }
     if(conrel.size() > 0){
       insert conrel;
      } 
   
    }