public class ApexTamilDay8Utility {

    //direct return
    ///*******************************/
   /*
    String rating;
    Integer amount;
    Decimal discount = 0; // here we are declaring so in else part if both condition not satisfying it takes the default one otherwise null point exception occure
	//moreover here we are making in private..because if we give public anyone can change the discount in anonymous window(realtime customer)
    
    public decimal discountCalculation(string rating,integer amount){
        this.rating = rating;
        this.amount = amount;
        if(rating=='hot' && amount>5000){
            discount = 0.20;
        }
        else if (rating=='hot' && amount>4000){
            discount = 0.10;
        }
        return discount; //ere we used return in common 
    }*/
    
    /******************************************************/
    //usin return in every if else
    
  /*  String rating;
    Integer amount;
    Decimal discount = 0;
    
    public decimal discountCalculation(string rating,integer amount){
        this.rating = rating;
        this.amount = amount;
        if(rating=='hot' && amount>5000){
            discount = 0.20;
            return discount;
        }
        else if (rating=='hot' && amount>4000){
            discount = 0.10;
            return discount;
        }
        else{
             return discount; //here we used return in every place 
        }
    }*/
    
    /**********************************************************/
    
   String rating;
    Integer amount;
    Decimal discount = 0;
    final Decimal twentyPercent = 0.20; //here we are directly giving the value
    final Decimal tenPercent = 0.10;
    
    public decimal discountCalculation(string rating,integer amount){
        this.rating = rating;
        this.amount = amount;
        if(rating=='hot' && amount>5000){
            discount = twentyPercent;
            return discount;
        }
        else if (rating=='hot' && amount>4000){
            discount = tenPercent;
            return discount;
        }
        else{
             return discount;
        }
    }
}