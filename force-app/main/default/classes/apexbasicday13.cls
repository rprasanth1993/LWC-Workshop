public class apexbasicday13 {

    public static Integer bigfind(Integer x,Integer y,Integer z){
        if(x>y && x>z)
            return x;
        else if(y>z)
            return y;
        else
            return z;
    }
    
    @testVisible
    private static void display(){ //if we private we can't acces in test class so for access using '@testvisible'
        system.debug('happy to know about testing');
    }
}