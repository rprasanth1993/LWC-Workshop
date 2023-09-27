/*
* @author : Prasanth
* @date   : 27/05/2023
* @descreiption : do it yourself List of superMarket
* 
* */
public class ApexDoitSuperMarket {
    
    public List<ApexDoitProductList> productList = new List<ApexDoitProductList>(); 
    // public List<Integer> productList = new List<Integer>();//class name of product(ApexDoitProductList-->reference    
    string messageStock;
    Decimal amount;
    Decimal discount;
    Decimal totalAmount;
    //final Integer reorder = 20;
    
    public void products(){
        for(ApexDoitProductList prod:productList){
            system.debug('productDetails:'+prod);
        }
    }
    
    /*************************************************************************************************************/
    public void billing(Integer prodCode,Integer quantity){
        system.debug('prodCode:'+prodCode);
        messageStock = 'your stock is less';
        for(ApexDoitProductList prod:productList){
            if(prodCode==prod.productCode){
                system.debug('productCode:'+prod.productCode);
                if(prod.productstock>quantity){
                    system.debug('----------');
                    Amount = prod.productPrice * quantity;
                    discount = (Amount>10000)?10.0:(Amount>5000)?5.0:0;
                    totalAmount = Amount - (discount/100);
                    prod.productstock = prod.productstock - quantity;
                    system.debug('Amount:'+Amount);
                    system.debug('discount:'+discount); 
                    system.debug('totalAmount:'+totalAmount);
                    system.debug('Stock:'+ prod.productstock);
                }
                else{
                    system.debug(messageStock);
                }
            }
        }
    }
    
    /*************************************************************************************************************/ 
    public void search(Integer prodCode){
        for(ApexDoitProductList prod:productList){
            if(prod.productCode == prodCode){
                system.debug('ProductName:'+prod.productName +'  '+'ProductCode:'+prod.productCode + '  '+'ProductPrice:'+prod.productPrice +'  '+'ProductDiscount:'+ prod.productDiscount+ '  '+'Productstock:'+prod.productstock);    
            }
            else{
                system.debug('Enter the correct code');
            }
        }
    }
    
    /*************************************************************************************************************/ 
    
    public void reorderproduct(Integer prodCode,Integer stockAdded){
        
        for(ApexDoitProductList prod:productList){
            if(prod.productstock<20){
                
                prod.productstock = prod.productstock+ stockAdded;
                search(002);
                system.debug('ProductName:'+prod.productName +'  '+'ProductCode:'+prod.productCode + '  '+'ProductPrice:'+prod.productPrice +'  '+'ProductDiscount:'+ prod.productDiscount+ '  '+'Productstock:'+prod.productstock); 
                system.debug('prod.productstock:'+prod.productstock);
                
            }
            else{
                system.debug('product has enough stocks');
            }
        }
    }
}