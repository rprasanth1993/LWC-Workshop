/*
* @author : Prasanth
* @date   : 23/05/2023
* @descreiption : day11  child
* 
* */

public class ApexTamilday11ChildInheritance extends ApexTamilDay11Inheritance {// using extends as childclass---extend is keyword,,ApexTamilDay11Inheritance--->parentclass name
    
    public void displayChild(){
        system.debug('function from child');
    }
     
     public override void display(){
       system.debug('function from child method'); 
    }
}