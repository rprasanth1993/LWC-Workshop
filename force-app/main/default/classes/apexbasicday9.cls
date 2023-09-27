public class apexbasicday9 {

    
    //public void display(){
    public void display(string a,string b,string c){
        List<string> fruits = new List<string>();
        //List<string> fruits = new List<string>{'orange','apple','orange'};
        //List<string> fruits = new List<string>();  
        fruits.add(a);
        fruits.add(b);
        fruits.add(c);
        /*fruits.add('orange');
        fruits.add('apple');
        fruits.add('orange');*/
        system.debug(fruits);   
        /*set<string> sfruits = new set<string>();
		sfruits.addall(fruits);
		system.debug(sfruits);*/
    }
}