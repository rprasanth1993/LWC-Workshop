public class apexday5doitresultandgrade {
    
    public void displaysum(){
        integer m1 = 55;integer m2 = 56;integer m3 = 51;
        decimal sum = m1+m2+m3;
        system.debug(sum);
        decimal avg = sum/3;
        system.debug(avg);
        
        string result;
        string grade;
        if(m1 > 50 && m2 > 50 && m3 > 50){
            result='pass';
            system.debug('pass');
        }
        else{
            result='fail';
            system.debug('fail');
        }
        if(result=='pass' && avg > 90){
            system.debug('s grade');
        }
        else if(result=='pass' && avg > 80){
            system.debug('A grade');
        }
        else if(result=='pass' && avg > 70){
            system.debug('B grade');
        }
        else if(result=='pass' && avg > 60){
            system.debug('C grade');
        }
        else if(result=='pass' && avg > 50){
            system.debug('D grade');
        }
        else{
            system.debug('fail-no grade');
        }
    }  
}