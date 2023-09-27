//Trigger to prevent an User from creating more than 5 contacts in an org
// with name "test" in the last 2 days and display an error if they do so.
trigger Contactprevent on Contact (before insert,before update) {
    
       List<Contact> ctlt = [select Id,Name,LastName from Contact where Name like '%Test%' AND createdDate=Last_N_days:2];
    for(Contact con:Trigger.new){       
        if(ctlt.size()>5){
       con.addError('duplicate test records');
    }
        }
    }