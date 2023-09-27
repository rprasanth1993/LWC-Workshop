public class ApexTamilday6DoitDeposit {
    integer accountBalance = 5000;
    /*integer deposit;
    integer withdraw;
    integer option;*/
    
    public void deposit(integer deposit,integer withdraw,integer option){
        if(option==1){
            accountBalance = accountBalance + deposit;
            system.debug('current balance:'+accountBalance);
        }
        else if(option==2){
            if(accountBalance<withdraw){
               system.debug('withdraw amount greater than account balance'); 
            }
            else if(accountBalance>withdraw){
                accountBalance = accountBalance - withdraw;
                system.debug('current balance:'+accountBalance);  
            }
            
        }
        else{
            system.debug('Enter the correct number');
        }
        
        //switch case
       /* switch on option{
            when 1{
                accountBalance+=deposit;
                system.debug('overall amount:'+accountBalance); 
            } 
            when 2{
                if(accountBalance<withdraw){
                    system.debug('withdraw amount greater than account balance');            
                }        
                else if(accountBalance>withdraw)
                {
                    accountBalance-=withdraw;
                    system.debug('overall amount:'+accountBalance); 
                }
            }
            
            when else{
                system.debug('Enter the valid option');
            }
    }*/
 } 
}