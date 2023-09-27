/*call future method from process builder
 scenario:when account created with rating hot send email to owner
steps involved:
create an invocable method in apex
call future method from invocable method
call invocable method from process builder*/
//pb name is testinvcoke for understanding
public class asynchday2invocablefuture {

    @invocablemethod
    public static void sendEmailToOwner(List<String> emailId){//invocable method receive only one dataype that should in list
       // futuremethod(emailId[0]);
    }
    
   /* @future
    public static void futuremethod(String email)
    {
        
        Messaging.SingleEmailMessage message = new  Messaging.SingleEmailMessage();
        message.Toaddresses = new String[]{email};
        message.Subject='Account created with hot rating';
        message.plaintextbody='Account created with hot rating';
        
        Messaging.SingleEmailMessage[] messages = new List<Messaging.SingleEmailMessage>{message};
        Messaging.SendEmailResult[] results = Messaging.sendEmail(messages);
        
        if(results[0].success){
            system.debug('sent');   
        }
         else{
                system.debug('can not sent');
            }
          
    }*/
    @future
    public static void futuremethod2(string email){
        system.debug('future method');
    }
    
}