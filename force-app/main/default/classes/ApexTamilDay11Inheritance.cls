/*
* @author : Prasanth
* @date   : 23/05/2023
* @descreiption : day11  ineritance
* 
* */

public virtual class ApexTamilDay11Inheritance {//parent class -->virtual as keyword

    public void displayParent(){
        system.debug('function from parent');
    }
    
    public virtual void display(){
       system.debug('function from parent method '); 
    }
}