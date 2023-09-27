//we are inserting the account object in description=democheck and updating the field annualrevenue field when description is democheck and rating not equal to hot
 //after update we can't use in this scenario because after update is read only record 
 ///after update usage: in general terms it's only for related object.(eg:one object is relationship with another object)
public class AccoutBeforeInsert {
 public static void demoDescription(List<Account>acclist){
        for(Account acc:acclist){
            acc.Description = 'demo check';
        }        
    }
    //before update
    public static void demoDescription2(List<Account>acclist){
        for(Account acc:acclist){
            if(acc.Description == 'demo check' && acc.Rating!='hot'){
                acc.AnnualRevenue = 100;
                system.debug('annual rev check:'+acc);
                //acc.Rating = 'hot';
            }            
        }   
    }
    
    //before insert
    //prevent duplicate records in creation and update       
       public static void preventDuplicate(List<Account> newList){
        // need oldlist to check the records
        // getting the names of the record
        // adderror method to spot the duplicate
        List<string> strList = new List<string>();
        for(Account acc:newList){
            strList.add(acc.name);
        }
        
        List<Account> oldLt = [select Id,Name from Account where Name In:strlist];
        for(Account a:newList){
         if(oldLt.size()!=0){          
                a.Name.addError('Name already found');
            }
        }   
        }
    
    
    
    //if we use two method in same operation eg:before update that can't execute two methods at same time.only first one method will execute
   
    
    //if the rating is changed from hot to cold and annual revenue is blank update the active status=no;
    //before update
    public static void fieldUpdateMap(Map<Id,Account>oldMap,Map<Id,Account>newMap){
        for(Account acc:newmap.values()){//newmap(trigger.new).we are getting the newly stored record values(old record the id are same) in this step each record we are looping(iterating individual) that record stores in acc
            if(oldMap.get(acc.Id).Rating == 'Hot' && newMap.get(acc.Id).Rating =='Cold' && newMap.get(acc.Id).AnnualRevenue==null){
                acc.Active__c = 'No';
            }
        }
    }
    
    //before delete
    // when the account status is active=yes,we can delete the record
    // in before delete we shouldn't delete the record
    public static void demobeforedelete(List<Account>aclist){
        for(Account acc:aclist){
            if(acc.Active__c =='yes'){
                acc.AddError('unable to delete');
            }
        }
    }
    
    //when account insert contact will insert
    //after insert
    public static void demoDescription3(List<Account>acclist){
        List<contact> conList = new List<contact>();
        for(account acc:acclist){ // acclist is a list of records in account.in this step each record we are looping(iterating individual) that record stores in acc
            contact con = new contact();
            con.LastName = acc.Name;
            con.AccountId = acc.Id;
            conlist.add(con);
        }
        if(!conlist.isEmpty())//value is there in conlist
            insert conlist;
    }
    
    //when account phone update,contact phone will update
    //after update
   // public static void demoDescription4(List<Account>acclist){
        
        /*List<Contact> conList = new List<Contact>();
        Set<Id> acset = new Set<Id>();
        for(Account acc:acclist){//separate record
            acset.add(acc.Id);//Id(Account-obj) is lookup with contact
        }
        // checking the contact has the same account Id. getting the respected contact for account through id
       List<Contact> ctList = [select Id,Name,Phone from Contact where AccountId In:acset];//Accountid(contact-obj) is lookup with account...
                
        for(Account acc1:acclist){ //separate record for the account  like above in the for each iterate
            for(Contact ct:ctList){
                ct.Phone = acc1.Phone;
                conList.add(ct);
            }
        }
        if(!conList.isEmpty()){
            update conList; 
        }
    }*/
    
    //by using map..same scenario
    public static void demoDescription4(map<id,Account> newMap)  {
        List<Contact> ctlt = new List<Contact>();
        Map<Id,contact> ct = new Map<Id,contact>([select Id,name,Accountid,phone from contact where AccountId in:newmap.keySet()]);
        system.debug(ct);
        for(Account acc:newMap.values()){
            if(acc.Type =='Prospect'){
                
                for(contact c:ct.values()){
                    c.phone = newmap.get(c.AccountId).phone;//particular contact refering by using accountid here
                    ctlt.add(c);
                }
            } 
        }
        update ctlt;
        system.debug(ctlt);
    }   

    //after delete
    // when account is deleted reated opportunity also delete
    public static void afterdemodel(List<Account>aclist){
        List<Opportunity> opplist = new List<Opportunity>();
        set<Id> setAccId = new set<Id>();
        for(Account acc:aclist){
            setAccId.add(acc.Id);
        }
        List<Opportunity> opp = [select Id,Name from Opportunity where AccountId In:setAccid];
       // system.debug('oppoirtunity:'+opp);
        for(Opportunity o:opp){
            opplist.add(o);
        }
        if(!opplist.isempty()){
            delete opplist;
        }
    }
    
    //after undelete
    // in account object Active__c =='No'then restore the account from recycle bin
    public static void afterundel(List<Account>acclist){
        List<Account> aclt = new List<Account>();
        for(Account acc:acclist){
            if(acc.Active__c == 'No'){
              aclt.add(acc);  
            }
            undelete aclt;
        }        
    }
}