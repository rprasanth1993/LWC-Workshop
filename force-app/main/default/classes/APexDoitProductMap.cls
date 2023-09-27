/*
* @author : Prasanth
* @date   : 29/05/2023
* @descreiption : do it yourself List of Product by using map
* 
* */

public class APexDoitProductMap {
    
    public Map<Integer,ApexDoitProductList> productMap = new Map<Integer,ApexDoitProductList>();
    string messageStock;
    Decimal amount;
    Decimal discount;
    Decimal totalAmount;
    public ApexDoitProductList prodDetails;
    
    public void displayProduct(){
        for(ApexDoitProductList allProducts:productMap.Values()){
            system.debug('allProducts:'+allProducts);
        }
    }
    
       /*************************************************************************************************************/ 
    
    public void billing(Integer prodCode,Integer quantity){
        system.debug('prodCode:'+prodCode);
        messageStock = 'your stock is less';
        if(productMap.containsKey(prodCode)){ //containsKey only can acces in the values which has in class
            prodDetails = productMap.get(prodCode);
            if(prodDetails.productstock>quantity){
                system.debug('----------');
                Amount = prodDetails.productPrice * quantity;
                discount = (Amount>10000)?10.0:(Amount>5000)?5.0:0;
                totalAmount = Amount - (discount/100);
                prodDetails.productstock = prodDetails.productstock - quantity;
                system.debug('Amount:'+Amount);
                system.debug('discount:'+discount); 
                system.debug('totalAmount:'+totalAmount);
                system.debug('Stock:'+ prodDetails.productstock);
            }
            else{
                system.debug(messageStock);
            }
        }
        else{
            system.debug('product code is not valid');
        }
    }
    
       /*************************************************************************************************************/ 
    
    public void search(Integer prodCode){
        if(productMap.containsKey(prodCode)){
            prodDetails = productMap.get(prodCode);
            if(prodDetails.productCode == prodCode){
                system.debug('ProductName:'+prodDetails.productName +'  '+'ProductCode:'+prodDetails.productCode + '  '+'ProductPrice:'+prodDetails.productPrice +'  '+'ProductDiscount:'+ prodDetails.productDiscount+ '  '+'Productstock:'+prodDetails.productstock);    
            }
            else{
                system.debug('Enter the correct code');
            } 
        }
    }
    
       /*************************************************************************************************************/ 
    
    public void reorderProduct(Integer prodCode,Integer stockAdded){
        if(productMap.containsKey(prodCode)){
            prodDetails = productMap.get(prodCode);
            if(prodDetails.productstock<20){
                
                prodDetails.productstock = prodDetails.productstock+ stockAdded;
                /*  search(002);
system.debug('ProductName:'+prodDetails.productName +'  '+'ProductCode:'+prodDetails.productCode + '  '+'ProductPrice:'+prod.productPrice +'  '+'ProductDiscount:'+ prod.productDiscount+ '  '+'Productstock:'+prod.productstock); */
                system.debug('prod.productstock:'+prodDetails.productstock);
                
            }
            else{
                system.debug('product has enough stocks');
            }
        }
    } 
}