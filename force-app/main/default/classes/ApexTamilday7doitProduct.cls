public class ApexTamilday7doitProduct {
    
    static integer productCode1,productCode2,productCode3;
    static string  productName1,productName2,productName3;
    static decimal productPrice1,productPrice2,productPrice3;
    static decimal productDiscount1,productDiscount2,productDiscount3;
    static integer productStock1,productStock2,productStock3;
    static decimal Amount;
    static decimal discount; 
    static decimal totalAmount;
    static integer currentStock;
    
    public static void productdetails(integer productId,integer productCode,string productName,decimal productPrice,decimal productDiscount,integer productStock){
        if(productId == 1){
            productCode1 = productCode;
            productName1 = productName;
            productPrice1 = productPrice;
            productDiscount1 = productDiscount;
            productStock1  = productStock;
            system.debug('productCode1:'+productCode1 +'  '+'productname1:'+productName1 + '  '+'productprice1:'+productPrice1 +'  '+'productdiscount1:'+ productDiscount1+ '  '+'productstock1:'+productStock1+ '  '+'productid:'+productId);
        }
        else if(productId ==2){
            productCode2 = productCode;
            productName2 = productName;
            productPrice2 = productPrice;
            productDiscount2 = productDiscount;
            productStock2  = productStock;
            system.debug('productCode2:'+productCode2 +'  '+'productName2:'+productName2 + '  '+'productPrice2:'+productPrice2 +'  '+'productDiscount2:'+ productDiscount2+ '  '+'productstock2:'+productstock2+ '  '+'productid:'+productId);
        }
        else if(productId ==3){
            productCode3 = productCode;
            productName3 = productName;
            productPrice3 = productPrice;
            productDiscount3 = productDiscount;
            productStock3  = productStock;
            system.debug('productCode3:'+productCode3 +'  '+'productName3:'+productName3 + '  '+'productPrice3:'+productPrice3 +'  '+'productDiscount3:'+ productDiscount3+ '  '+'productStock3:'+productStock3+ '  '+'productid:'+productId);
        }
        else{
            system.debug('you are not passing the valid productCode');
        }
    }
    
    /*****************************************************************************************************/
    public static void billingDetails(integer productCode,integer quantity){
        system.debug('productCode:'+productCode);
        system.debug('productCode1:'+productCode1);
        system.debug('quantity:'+quantity);
        
        system.debug('****');
        if(productCode==productCode1){
            system.debug('//////');
            if(productStock1>quantity){
                system.debug('----------');
                Amount = productPrice1 * quantity;
                discount = (Amount>10000)?10.0:(Amount>5000)?5.0:0;
                totalAmount = Amount - (discount/100);
                productStock1 = productStock1 + quantity;
                system.debug('Amount:'+Amount);
                system.debug('discount:'+discount); 
                system.debug('totalAmount:'+totalAmount);
                system.debug('productPrice1:'+productPrice1 +' '+'productStock1:'+ productStock1+' '+'productPrice1:'+productPrice1 +'  '+'discount:'+ discount+' '+'totalAmount:'+totalAmount);
            }
            else{
                system.debug('your stock is less');
            }
        }
        
        if(productCode==productCode2){
            system.debug('//////');
            if(productStock2>quantity){
                system.debug('----------');
                Amount = productPrice2 * quantity;
                discount = (Amount>10000)?10.0:(Amount>5000)?5.0:0;
                totalAmount = Amount - (discount/100);
                productStock2 = productStock2 + quantity;
                system.debug('Amount:'+Amount);
                system.debug('discount:'+discount); 
                system.debug('totalAmount:'+totalAmount);
                system.debug('productPrice2:'+productPrice2 +' '+'productStock2:'+ productStock2+' '+'productPrice2:'+productPrice2 +'  '+'discount:'+ discount+' '+'totalAmount:'+totalAmount);
            }
            else{
                system.debug('your stock is less');
            }
        }
        
        
        if(productCode==productCode3){
            system.debug('//////');
            if(productStock3>quantity){
                system.debug('----------');
                Amount = productPrice1 * quantity;
                discount = (Amount>10000)?10.0:(Amount>5000)?5.0:0;
                totalAmount = Amount - (discount/100);
                productStock3 = productStock3 + quantity;
                system.debug('Amount:'+Amount);
                system.debug('discount:'+discount); 
                system.debug('totalAmount:'+totalAmount);
                system.debug('productPrice3:'+productPrice3 +' '+'productStock3:'+ productStock3+' '+'productPrice3:'+productPrice3 +'  '+'discount:'+ discount+' '+'totalAmount:'+totalAmount);
            }
            else{
                system.debug('your stock is less');
            }
        }
        
    }
    /*****************************************************************************************************/
    public static void search(integer productCode){
        if(productCode==productCode1){
            system.debug('productCode1:'+productCode1 +'  '+'productname1:'+productName1 + '  '+'productprice1:'+productPrice1 +'  '+'productdiscount1:'+ productDiscount1+ '  '+'productstock1:'+productStock1);
        }
        else if(productCode==productCode2){
            system.debug('productCode2:'+productCode2 +'  '+'productname2:'+productName2 + '  '+'productprice2:'+productPrice2 +'  '+'productdiscount2:'+ productDiscount2+ '  '+'productstock2:'+productStock2);
        }
        else if(productCode==productCode3){
            system.debug('productCode3:'+productCode3 +'  '+'productname3:'+productName3 + '  '+'productprice3:'+productPrice3 +'  '+'productdiscount3:'+ productDiscount3+ '  '+'productstock3:'+productStock3);
        }
        else{
            system.debug('It is not an valid product code');
        }
    }
    
    public static void reorderProducts(integer productCode,integer reorder){
        system.debug('productCode:'+productCode);
        if(productCode==productCode1){
            system.debug('you have entered the valid code');
            
            if(productStock1>reorder){
                system.debug('productStock1 has enough stocks');
            }
            
            else{
                system.debug('More stocks needed');
                currentStock = reorder - productStock1;
                system.debug('shortage of stock:'+currentStock);
            }
        }
        else{
            system.debug('product1 code not valid');
        }
        
        if(productCode==productCode2){
            system.debug('you have entered the valid code');
            
            if(productStock2>reorder){
                system.debug('productStock1 has enough stocks');
            }
            
            else{
                system.debug('More stocks needed');
                currentStock = reorder - productStock2;
                system.debug('shortage of stock:'+currentStock);
            }
        }
        
        else{
            system.debug('product2 code not valid');
        }
        
        
        if(productCode==productCode3){
            system.debug('you have entered the valid code');
            
            if(productStock3>reorder){
                system.debug('productStock3 has enough stocks');
            }
            
            else{
                system.debug('More stocks needed');
                currentStock = reorder - productStock3;
                system.debug('shortage of stock:'+currentStock);
            }
        }
        else{
            system.debug('product3 code not valid');
        }
        
    }
}