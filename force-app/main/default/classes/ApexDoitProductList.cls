/*
* @author : Prasanth
* @date   : 27/05/2023
* @descreiption : do it yourself List of Product
* 
* */

public class ApexDoitProductList {
   public  String productName;
   public  Integer productCode;
   public  Integer productstock;
   public  Decimal productPrice;
   public  Decimal productDiscount;
   
     
    public  ApexDoitProductList(String productName,Integer productCode,Integer productstock,Decimal productPrice,Decimal productDiscount){
        this.productName = productName;
        this.productCode = productCode;
        this.productstock = productstock;
        this.productPrice = productPrice;
        this.productDiscount = productDiscount;
        system.debug('ProductName:'+productName +'  '+'ProductCode:'+productCode + '  '+'ProductPrice:'+productPrice +'  '+'ProductDiscount:'+ productDiscount+ '  '+'Productstock:'+productstock);
    }
}