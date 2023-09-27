public class ApexTamilDay8Constructor {
    
    
    Integer amount;
    
    public ApexTamilDay8Constructor(){ //inconstructor we can use class and method name as same,,here we are fixing or giving the value
        amount = 1500;
        system.debug('amount:'+amount);
        system.debug('empty constructor');
    }
    
    public ApexTamilDay8Constructor(Integer amount){ //this method used because if user want to enter by themselves it will use
        this.amount = amount;
        system.debug('amount:'+this.amount);
      
    }
}