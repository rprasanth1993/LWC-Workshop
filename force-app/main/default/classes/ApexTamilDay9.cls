/*
* @author : Prasanth
* @date   : 21/05/2023
* @descreiption : static day9 and day10 1st-half
* 
* */

public class ApexTamilDay9 {
    
   /* Integer x =10;
    static Integer y = 25;
    public void setvalue(Integer x){
        this.x = x;
        system.debug('x:'+ this.x);
    }
    
    public void displayValues(){        
        system.debug('Non static x:'+x);
        system.debug('static y:'+y);
    }*/
    
  /*  public void function1(){
        system.debug('function1');
        ApexTamilDay9 obj = new ApexTamilDay9();
        obj.function2();
    }
    void function2(){ //non static private function
        system.debug('function2');
    }*/
    
   /***********so 'this' cant use in static***** */
  /*  static Integer y = 20; 
    public void day10(){
        system.debug(this.y);//we can't use because this represeting the static integer value.here in anonymous window.it' take only in the object
    }*/
    
    /***********non static varibale using in static variable***** */
        
    public Integer y = 20; 
    public void day10(){
        
        system.debug(new ApexTamilDay9().y);// calling the non static variable value in static variable
}
}