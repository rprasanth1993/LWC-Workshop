public class workshopday5class3 {
    
    public string logincheck(string a,string b){
        string username='prasanth';
        string password='2345';
        if(username==a && password==b){
            return 'you are log in successfully';
        }
        else{
            return 'login failed';
        }
    }
}