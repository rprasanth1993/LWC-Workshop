/*
* @author : Prasanth
* @date   : 11/08/2023 -->day45
* @description : Apex test Class
* 
* */

// parameter Amount,Rating.. if rating = hot amount must be 30%
//if rating= cold amount must be 20%

public class ApexTamilday45 {
    
	static double commission = 0;
    
    public static double doCommission(Integer amount,String Rating){
        if(Rating=='Hot'){
            commission = amount*0.30; 
        }
        else if(Rating=='Cold'){
            commission = amount*0.20;
        } 
     return commission;      
    }
}