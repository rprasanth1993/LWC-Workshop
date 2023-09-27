public class ApexTamilday6 {
	public string message = 'welcome'; 
    /* vv.imp */
    // in accesd modifier if we didn't give access as public
    //default it takes as private so we can't directly call in anonymous window
    // if we give like this it's not best practices all can change the value in anaonymous window
	//which is override
    
    public void displayMessage(){
        integer amt = 500;//which is local variable so we use this value in another methd
        //if you want to use decalrale the variable in global
        system.debug('message details:'+message);
    }
}