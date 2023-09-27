public class apexbasicday13expectionerror {

    public static void display(){
        integer x = 0;
        List<Integer> lst = new List<Integer>{1,2,3,4};
            try{
                x = lst[5];
                system.debug('After list');
            }
        catch(Exception e){
            x=lst[0];
            system.debug('Exception handling');
            system.debug(e.getMessage());
            system.debug(e.getLineNumber());
        }
            
    }
}