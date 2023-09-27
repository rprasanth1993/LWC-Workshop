public class apexday9doitlist {
    
    public integer productcode,productprice,productstock;
    public string productname;
    public decimal productdiscount;
    
   //constructor class and method name same, we have follow anonymous this way only check anonymous window
   
    public apexday9doitlist(integer productcode,string productname,integer productprice,
                               decimal productdiscount,integer productstock)
    {
        this.productcode = productcode;
        this.productprice = productprice;
        this.productstock = productstock;
        this.productname = productname;
        this.productdiscount = productdiscount;
        system.debug('Prodcutcode:'+productcode +'  '+'productname:'+productname + '  '+'productprice:'+productprice +'  '+'productdiscount:'+ productdiscount+ '  '+'productstock:'+productstock+ '  ');
    }
    
}