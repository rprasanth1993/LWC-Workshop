/*
* @author : Prasanth
* @date   : 04/07/2023 -->day40 
* @description : wrapper class from flow 
               flow name : Apex wrapper class day 40
* 
* */

public class ApexTamilday40Wrapper {

    //Annotations-->Invocable method:helps to call from flow
    // label is important to give because in flow we can identify by label only not by apex class or method name.so label name should be proper
    @InvocableMethod(label='Send SMS' description ='send sms to lead' )
    public static void sendSMS(wrapperSMSRequest[] request){
      // above   wrapperSMSRequest[] request .i taken the name of below class.moreover the data not comes(we can't send single record we floow best practices as bulkify) in single it comes all parameter so taking in array
      
        List<Task> taskAdding = new List<Task>();
        for(wrapperSMSRequest req:request){
            //send sms logic ..here we didn;t do because it's involved integration
            //
            Task listTask  = new Task();
            listTask.WhoId = req.leadId; //leadid we are giving in wrapperclass
            listTask.Subject = 'sms followup';
            listTask.Description = req.smsBody;//smsBody we are giving in wrapperclass
            listTask.Status = 'completed';
            taskAdding.add(listTask);
        }
        insert taskAdding;
    }
    
    public class wrapperSMSRequest{
        //we need this variable in flow too so using @InvocableVaribale
        //if InvocableVariable we need to use required=true ..like below
        @InvocableVariable(required=true)
        public string toNumber;
        @InvocableVariable(required=true)
        public string smsBody;
        @InvocableVariable
        public id leadId;
    }
}