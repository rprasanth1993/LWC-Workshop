//public class asynchday3queuable implements Queueable {
public class asynchday3queuable implements Queueable,Database.AllowsCallouts {
    
    public void execute(QueueableContext ctx){
        //logic
        /*system.debug('queuable demo');
        
        Delete [select Id from Account where createdDate=THIS_MONTH];*/
      /* system.debug('queuable demo');
        
        Delete [select Id from Account where createdDate=THIS_MONTH];
        
        system.debug(new asynchday3queuable2());*/
        
        Http http = new Http();
        HttpRequest hr = new HttpRequest();
        hr.setMethod('POST');//get post
        hr.setEndpoint('https://www.linkedin.com/feed/');
        http.send(hr);
        
    }
}