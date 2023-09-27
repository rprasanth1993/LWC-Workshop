public class apexday10doityourselfmap {
    
    public Map<Integer,apexday9doitlist> pdmap = new Map<Integer,apexday9doitlist>();
    
    public string message_alert_for_lessStock;
    public integer totalAmount;
    public integer discount;
    public integer stock;
    public apexday9doitlist details;    
    
    public void billing(integer quantity,integer pcode){
        
        message_alert_for_lessStock = 'quantity is less than stock';
        
        if(pdmap.containsKey(pcode)){
         details = pdmap.get(pcode); 
            if(pcode ==details.productcode){
                if(quantity>details.productstock){
                    system.debug(message_alert_for_lessStock);
                }
                else{
                    totalAmount = details.productprice * quantity;
                    system.debug('product purchased bill:'+totalAmount);
                    discount= (totalAmount>=10000)? 10 : (totalAmount>=5000) ? 5 : 0;
                    totalAmount = totalAmount - (totalAmount*(discount/100));
                    system.debug('final amount:'+totalAmount);
                    system.debug('discount percentage:'+discount);
                    stock = details.productstock-quantity;
                    system.debug('Remaining stock:'+stock);
                }
            }
        }
    }
    
    public void search(integer pcode1){
        if(pdmap.containsKey(pcode1)){
            if(details.productcode == pcode1){
                system.debug('product name and stock:'+details.productname + ' and ' + details.productstock);
            }
            else{
                system.debug('provide correct product code');
            }
        }
    }
    
     public void reorderproduct(integer productcode,integer stockadded){
        if(pdmap.containsKey(productcode)){
            details = pdmap.get(productcode);
            
            
        if(details.productstock < 20)
        {
            details.productstock= details.productstock + stockadded; 
            system.debug('reorder the stocks:'+details.productstock);
           system.debug('Reorder the stocks:'+details.productcode+' and ' + details.productname+' overall stocks:'+details.productstock);
        }
        else{
            system.debug('all products are available');
        }
        }
    }

}