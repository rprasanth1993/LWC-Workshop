public class asynchday1future {
    
    /* @future
public static void futuremethod(integer x){ //future method run in separate handler..check in log
system.debug('inside future method');
}

public static void method1(){ //normal methods run in separate ..can check in log
system.debug('method1 display');
}

public static void method2(){
system.debug('method2 display');
}*/
    
    //callout
    /* @future(callout=true)
public static void futuremethod(){
Http http = new Http();
HttpRequest hr = new HttpRequest();
hr.setMethod('POST');//get post
hr.setEndpoint('https://www.linkedin.com/feed/');
http.send(hr);

system.debug('inside future method');

}*/
    @future
    public static void futuremethod2(){
        Account acc = new Account();
        acc.Name = 'Test Account 500';
        insert acc;
        method4();
        
        //create user-profile,role
       /* Profile p = [select id from profile where Name = 'standard User'];
        UserRole r =[select id from UserRole where Name = 'CEO'];
        
        User u = new User();
        u.LastName = 'demouser';
        u.Alias ='Du';
        u.Username='demoUser@gmail.com';
        u.Email = 'demoUser@gmail.com';
        u.EmailEncodingKey='UTF-8';
        u.LanguageLocaleKey='en_US';
        u.LocaleSidKey='en_US';
        u.TimeZoneSidKey='America/Los_Angels';
        
        u.ProfileID = p.ID;
        u.UserRoleId = r.Id;
        insert u;*/
    }
    //futuremethod2 or method4 both is same ..working fine.two alternate ways
    public static void method4(){
        //create user-profile,role
        Profile p = [select id from profile where Name = 'standard User'];
        UserRole r =[select id from UserRole where Name = 'CEO'];
        
        User u = new User();
        u.LastName = 'demouser1';
        u.Alias ='Du';
        u.Username='demo1User@gmail.com';
        u.Email = 'demo1User@gmail.com';
        u.EmailEncodingKey='UTF-8';
        u.LanguageLocaleKey='en_US';
        u.LocaleSidKey='en_US';
        u.TimeZoneSidKey='America/Los_Angels';
        
        u.ProfileID = p.ID;
        u.UserRoleId = r.Id;
        insert u;
    }
    
    //Mixed dml-setup,Non setup
    public static void method3(){//in normal method it will give error so avoiding that we use future method..above one	
        /* Account acc = new Account();
acc.Name = 'Test Account 500';
insert acc;

//create user-profile,role
Profile p = [select id from profile where Name = 'standard User'];
UserRole r =[select id from UserRole where Name = 'CEO'];

User u = new User();
u.LastName = 'demouser';
u.Alias ='Du';
u.Username='demoUser@gmail.com';
u.Email = 'demoUser@gmail.com';
u.EmailEncodingKey='UTF-8';
u.LanguageLocaleKey='en_US';
u.LocaleSidKey='en_US';
u.TimeZoneSidKey='America/Los_Angels';

u.ProfileID = p.ID;
u.UserRoleId = r.Id;
insert u;
}*/
        system.debug('to check for seprate thread');
    }
}