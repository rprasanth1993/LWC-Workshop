public class apexday5doitcalc {
    
    
    string operation = '+';
    
    public void display(integer firstData , integer secondData ){
    if(operation =='+'){
        system.debug('it is addition='+(firstData+secondData));    
    }
    else if(operation =='-'){
        system.debug('it is substraction='+(firstData-secondData));
    }
    else if(operation =='*'){
        system.debug('it is multiplication='+(firstData*secondData));
    }
    else if(operation =='/'){
        system.debug('it is division='+(firstData/secondData));
    }
    else{
        system.debug('it is invalid operator');
    }

    }
}