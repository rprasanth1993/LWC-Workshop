public class apexbasicsday7 {

    private integer code;
    private string name;
    
    public apexbasicsday7(integer code,string name){
        this.code = code;
        this.name = name;
    }
    public void displayproduct(){
        system.debug(code);
        system.debug(name);
    }   
}