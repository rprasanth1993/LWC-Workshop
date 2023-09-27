public class ApexTamilday7 {
    
   private string message = 'welcome'; //////class level varaible what ever decalre in teh class
        
      /*  public void display(string msg){
            message = msg;
            system.debug('message:'+message);
        }*/
    
    public void display(string message){
            this.message = 'change message:'+message; //here two variable using in the same name-->message. so for access te class level variable we should use this.message
           // system.debug('message:'+message);
        system.debug('message:'+this.message);
    ///class level variable we can use it anywhere.
    
    //function level we can only in function/method
        }

   /* public void display(){
        system.debug(message);
    }*/
    public string displayReturn(){  //here we used samemethod adn different that wil work
       // system.debug(num1);
        return message;
    }
}