public class apexday5doitbankdeposit {
    
    public void moneydetails(){
        integer currentBalance = 50000;
        integer withdrawl = 55000;
        integer deposit = 10000;
        system.debug('current Balance:'+currentBalance);
        system.debug('1-withdrawl');
        system.debug('2-deposit');
        
        integer menu = 2;
        if(menu==1){
            system.debug('enter the withdrawl amount:'+withdrawl);
            
            if(withdrawl>currentBalance){
                system.debug('amount is not sufficient');
            }
            else{
                system.debug('Balance:'+(currentBalance-withdrawl));
            }
        }
        else if(menu==2){
            system.debug('Enter the deposit amount:'+deposit);
            system.debug('Overall Amount:'+(currentBalance+Deposit));
        }
        else{
            system.debug('invalid option');
            
        }
    }
}