//this class we gonna make callout the webservices call from org B(another ORG)
public class Integration_connect {
    
    public static void connectingCallFromORGB(){
        Http http = new Http();
        HttpRequest request = new HttpRequest();      
        /*request.setEndpoint('https://d5g000002xammea2-dev-ed.my.salesforce.com/services/apexrest/caseTest');
request.setMethod('GET');
// below we need the set the bearer token like wat we done in postman
request.setHeader('Authorization', 'Bearer !AQwAQLNkEVHrjqwlkrVzQg1Btw7A1q_mMwMawaMbUbNKHeKil1gkdE73.Cn3jg5fSsG4a4rguOTZ85Bry9zZMCYx8ZphtXrR');
*/
        
        request.setEndpoint('callout:salesforceOrgb_connect/services/apexrest/caseTest'); //now we are named credentials instead of endpoint beacuse the endpoint weused in name credentials so give name here
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        
        if(response.getStatusCode() == 200){
            List<Object> results = (List<Object>)JSON.deserializeUntyped(response.getBody());//deseralize the JSON string into primitive datatype
            
            for(Object result:results){
                Map<string,object> caseProp = (Map<string,object>) result;
                system.debug('caseNumber:'+caseProp.get('CaseNumber')+' - subject:'+caseProp.get('Subject'));
            }  
        }
    }
    
    //post method
    public static void CreateCaseCallFromORGB(){
        Http http = new Http();
        HttpRequest request = new HttpRequest();      
        /*request.setEndpoint('https://d5g000002xammea2-dev-ed.my.salesforce.com/services/apexrest/caseTest');
request.setMethod('GET');
// below we need the set the bearer token like wat we done in postman
request.setHeader('Authorization', 'Bearer !AQwAQLNkEVHrjqwlkrVzQg1Btw7A1q_mMwMawaMbUbNKHeKil1gkdE73.Cn3jg5fSsG4a4rguOTZ85Bry9zZMCYx8ZphtXrR');
*/
        
        request.setEndpoint('callout:salesforceOrgb_connect/services/apexrest/caseTest'); //now we are named credentials instead of endpoint beacuse the endpoint weused in name credentials so give name here
        request.setMethod('POST');
        request.setHeader('Content-Type','application/json;charset=UTF-8');
        
        //one more import subject,orgin etc..what we used in orggB paramter it should be same it case sensitive here so be careful
        
        request.setBody('{"subject": "call from sf orgA rprasanth1193@gmail.com","status": "New","origin": "Web","priority": "Medium"}'); ///we are passin json body
        HttpResponse response = http.send(request);
         system.debug(response.getBody());
        if(response.getStatusCode() == 200){
            
            system.debug(response.getBody());
        }
    }
}