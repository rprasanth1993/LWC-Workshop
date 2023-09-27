public class workshopday5class {
    
    public integer compare(integer x,integer y,integer z){
        if(x>y && x>z){
            system.debug('x is the greater:'+x);
            return x;
        }
        else if(y>z && y>x){
            system.debug('y is greater:'+y);
            return y;
        }
        else{
            system.debug('z is the greater:'+z);
            return z;
        }
    }      
}