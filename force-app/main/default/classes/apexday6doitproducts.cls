public class apexday6doitproducts {
    integer productcode1,productcode2,productcode3;
    string productname1,productname2,productname3;
    integer productprice1,productprice2,productprice3;
    decimal productdiscount1,productdiscount2,productdiscount3;
    integer productstock1,productstock2,productstock3;
    integer discount;
    integer stock;
    integer totalamount;
    string message_alert_for_lessStock;
    
    //not contructor method and class name is different we have follow anonymous this was only check anonymous window
    public void productdetails(integer productcode,string productname,Integer productprice,
                               decimal productdiscount,integer productstock,integer productid)
    {
        
        if(productid == 1){
            productcode1 = productcode;
            productname1 = productname;
            productprice1 = productprice;
            productdiscount1 = productdiscount;
            productstock1 = productstock;
            system.debug('Prdocutcode1:'+productcode1 +'  '+'productname1:'+productname1 + '  '+'productprice1:'+productprice1 +'  '+'productdiscount1:'+ productdiscount1+ '  '+'productstock1:'+productstock1+ '  '+'productid:'+productid);
        }
        else if(productid == 2){
            productcode2 = productcode;
            productname2 = productname;
            productprice2 = productprice;
            productdiscount2 = productdiscount;
            productstock2 = productstock;
            system.debug('Prdocutcode2:'+productcode2 +'  '+'productname2:'+productname2 + '  '+'productprice2:'+productprice2 +'  '+'productdiscount2:'+ productdiscount2+ '  '+'productstock2:'+productstock2+ '  '+'productid:'+productid);
        }
        else if (productid == 3){
            productcode3 = productcode;
            productname3 = productname;
            productprice3 = productprice;
            productdiscount3 = productdiscount;
            productstock3 = productstock;
            system.debug('Prdocutcode3:'+productcode3 +'  '+'productname3:'+productname3 + '  '+'productprice3:'+productprice3 +'  '+'productdiscount3:'+ productdiscount3+ '  '+'productstock3:'+productstock3+ '  '+'productid:'+productid);
        }
        else{
            system.debug('invalid products');
        }
        
    }
    
    public void productbilling(integer quantity,integer productcode){
        message_alert_for_lessStock = 'quantity is less than stock';
        
        if(productcode == productcode1){
            if(quantity>productstock1){
                system.debug(message_alert_for_lessStock);
            }
            else{
                totalAmount = productprice1 * quantity;
                system.debug('product purchased bill:'+totalAmount);
                discount= (totalAmount>=10000)? 10 : (totalAmount>=5000) ? 5 : 0;
                totalAmount = totalAmount - (totalAmount*(discount/100));
                system.debug('final amount:'+totalAmount);
                system.debug('discount percentage:'+discount);
                stock = productstock1-quantity;
                system.debug('Remaining stock:'+stock);
            }
        }
        else if(productcode == productcode2){
            if(quantity>productstock2){
                system.debug(message_alert_for_lessStock);
            }
            else{
                totalAmount = productprice2 * quantity;
                system.debug('product purchased bill:'+totalAmount);
                discount= (totalAmount>=10000)? 10 : (totalAmount>=5000) ? 5 : 0;
                totalAmount = totalAmount - (totalAmount*(discount/100));
                system.debug('final amount:'+totalAmount);
                system.debug('discount percentage:'+discount);
                stock = productstock1-quantity;
                system.debug('Remaining stock:'+stock);
            }
        }
        else if(productcode == productcode3){
            if(quantity>productstock3){
                system.debug(message_alert_for_lessStock);
            }
            else{
                totalAmount = productprice3 * quantity;
                system.debug('product purchased bill:'+totalAmount);
                discount= (totalAmount>=10000)? 10 : (totalAmount>=5000) ? 5 : 0;
                totalAmount = totalAmount - (totalAmount*(discount/100));
                system.debug('final amount:'+totalAmount);
                system.debug('discount percentage:'+discount);
                stock = productstock1-quantity;
                system.debug('Remaining stock:'+stock);
            }
        }
        else{
            system.debug('code is not valid');
        }
    }
    
    public void search(integer productcode){
        if(productcode == 100){
            system.debug('product name and stock:'+productname1 + ' and ' + productstock1);
        }
        else if(productcode == 101){
            system.debug('product name and stock:'+productname2 + ' and ' + productstock2);
        }
        else if(productcode == 105){
            system.debug('product name and stock:'+productname3 + ' and ' + productstock3);
        }
        else{
            system.debug('provide correct product code');
        }
    }
    
    public void reorderproduct(integer productcode,integer stockadded){
        if(productstock1 < 20)
        {
            productstock1= productstock1 + stockadded; 
            system.debug('reorder the stocks:'+productstock1);
           system.debug('Reorder the stocks:'+productcode1+' and ' + productname1+' overall stocks:'+productstock1);
        }
        else{
            system.debug('all products are available');
        }
        
    }

}