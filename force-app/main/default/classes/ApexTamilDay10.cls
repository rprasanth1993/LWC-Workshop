/*
* @author : Prasanth
* @date   : 22/05/2023
* @descreiption : day10 getter and setter
* 
* */

public class ApexTamilDay10 {

 /*  public Integer x =5;
   public Integer counter{get;set;}//////using getter and setter
       
    public void getAndSetDetails(){
        system.debug('counter:'+counter);
    }*/
    
 /*********************** only getting the values and setting the value in method*********************************8*/     
 /*  public Integer x =5;
    //readonly --->previously we set the value here we didn;t set any value,we make set as private
   public Integer counter{get;private set;}//////using getter and setter
       
    public void getAndSetDetails(){
        counter = 75; //here we set the value inside
        system.debug('counter:'+counter);
    }*/
    
   /********************* calculation example ***********************************/ 
    
    final decimal discountTwenty =0.20;
    public decimal discount{get;private set;}
    Integer amount;  
    
        public void discountDetails(Integer amount){
            this.amount = amount;
            discount = this.amount * discountTwenty;
        }
}