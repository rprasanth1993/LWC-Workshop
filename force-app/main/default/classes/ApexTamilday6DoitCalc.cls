public class ApexTamilday6DoitCalc {
	//integer num1;  //here i commented because i didn't  use the value in anyother in global a hardcode
	//integer num2;  
    integer result;
    public void sum(Integer num1,Integer num2){
        result = num1+num2;
        system.debug('sum of values:'+result);
    }
    public void sub(Integer num1,Integer num2){
        result = num1-num2;
        system.debug('sub of values:'+result);
    }
    public void multi(Integer num1,Integer num2){
        result = num1*num2;
        system.debug('sum of values:'+result);
    }
    public void div(Integer num1,Integer num2){
        result = num1/num2;
        system.debug('sum of values:'+result);
    }
}