public class apesday8doityourselftask {
    List<integer> bnum = new List<integer>{4,11,-7,9,5,6,3,-15};
    integer count = 0;
    public void displaybignumber(){
        
       
       /* bnum.add(4);
        bnum.add(2);
        bnum.add(9);
        bnum.add(5);*/
        system.debug(bnum);
        bnum.sort();
        system.debug('order values:'+bnum);
        system.debug(bnum[bnum.size()-1]);
        }       
    
    public void sumandeven(){
             integer evensum = 0;
             integer oddsum = 0;
             for( integer num : bnum){
                 if(math.mod(num,2)==0){
                     evensum = evensum+num;
                     system.debug('evennumber:'+num);
                 }
                 else{
                     oddsum = oddsum + num;
                     system.debug('oddnumber:'+num);
                 }
             }
        system.debug('sum of even number:'+evensum);
        system.debug('sum of odd number:'+oddsum);
    }
    
    public void negative(){
        
        for(integer negnum:bnum){
            if(negnum<0){
                system.debug('negative number:'+negnum);
                count++;
            }
        }
        system.debug('count of negative number:'+count);
        if(count==0){
         system.debug('no negative number');
        }
    }
    
    public void reversenumber(){
        List<integer> reverse = new List<integer>();
        bnum.sort();
        system.debug(bnum);
        for(integer i=bnum.size()-1;i>=0;i--){
            reverse.add(bnum[i]);                      
        }
        system.debug(reverse); 
    }
    }