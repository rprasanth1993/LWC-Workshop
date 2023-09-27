public class apexday9doitlistsupermarket {
    
    public List<apexday9doitlist> pd = new List<apexday9doitlist>();//previouslist classname
    public string message_alert_for_lessStock;
    public integer totalAmount;
    public integer discount;
    public integer stock;
    
    
    public void productinfo(){
        for(apexday9doitlist info:pd){
            system.debug('product details:'+info);
        }
    }
    
    public void billing(integer quantity,integer pcode)
    {
        message_alert_for_lessStock = 'quantity is less than stock';
        
        for(apexday9doitlist info:pd){
            if(pcode ==info.productcode){
                if(quantity>info.productstock){
                    system.debug(message_alert_for_lessStock);
                }
                else{
                    totalAmount = info.productprice * quantity;
                    system.debug('product purchased bill:'+totalAmount);
                    discount= (totalAmount>=10000)? 10 : (totalAmount>=5000) ? 5 : 0;
                    totalAmount = totalAmount - (totalAmount*(discount/100));
                    system.debug('final amount:'+totalAmount);
                    system.debug('discount percentage:'+discount);
                    stock = info.productstock-quantity;
                    system.debug('Remaining stock:'+stock);
                }
            }
        }
    }
    
    public void search(integer pcode1){
        for(apexday9doitlist info:pd){
            if(info.productcode == pcode1){
                system.debug('product name and stock:'+info.productname + ' and ' + info.productstock);
            }
            else{
                system.debug('provide correct product code');
            }
        }
    }
    
    public void reorderproduct(integer productcode,integer stockadded){
        for(apexday9doitlist info:pd){
        if(info.productstock < 20)
        {
            info.productstock= info.productstock + stockadded; 
            system.debug('reorder the stocks:'+info.productstock);
           system.debug('Reorder the stocks:'+info.productcode+' and ' + info.productname+' overall stocks:'+info.productstock);
        }
        else{
            system.debug('all products are available');
        }
        }
    }
}