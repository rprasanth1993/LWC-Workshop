/*
* @author : Prasanth
* @date   : 03/07/2023 -->day38 
* @description : custom exception
* 
* */
//whatever the class name ends with exception(eg:day38Exception)..it automatically comes like below with extends

public class ApexTamilDay38Exception extends Exception {

    //custom messag..we use override
    public override string getMessage(){
        return 'amount should be>5000';
    }
}