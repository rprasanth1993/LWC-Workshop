public class Intgeration_spooncular_APi {
  
     public static string spoonacular_api = 'https://api.spoonacular.com';
     public static string apiKey = '36f38de5bf804f98967125641264e6a4';

    public static void spooncularApi(){
        Http http = new Http();
        HttpRequest request = new HttpRequest();      
        request.setEndpoint(spoonacular_api+'/recipes/random?apiKey='+apiKey);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        system.debug('responsecode:**'+response.getStatusCode());
        if(response.getStatusCode()==200){
            system.debug('response:'+response.getBody());
        }
    }

	public static void getRecepie(string recepi_ID){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
         // https://api.spoonacular.com/recipes/{id}/information -->for my refernce from spooncular resource
         // //https://api.spoonacular.com/recipes/716429/information?includeNutrition=false
        request.setEndpoint(spoonacular_api+'/recipes/'+recepi_ID+'/information?apiKey='+apiKey);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        system.debug('responsecode:**'+response.getStatusCode());
        if(response.getStatusCode()==200){
            system.debug('response:'+response.getBody());
        }
    }

	public static void getRecepieIngrident(string ingredients){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        //https://api.spoonacular.com/recipes/findByIngredients -->for my refernce from spooncular resource
        ////https://api.spoonacular.com/recipes/findByIngredients?ingredients=apples,+flour,+sugar&number=2  using comma separted for different parameter
        request.setEndpoint(spoonacular_api+'/recipes/findByIngredients?apiKey='+apiKey+'&ingredients='+ingredients);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        system.debug('responsecode:**'+response.getStatusCode());
        if(response.getStatusCode()==200){
            system.debug('response:'+response.getBody());
        }
    }
    
}