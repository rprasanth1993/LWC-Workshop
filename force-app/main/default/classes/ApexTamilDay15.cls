/*
* @author : Prasanth
* @date   : 27/05/2023
* @description : day15 collection--->List adding the firstname and lastname
* 
* */
public class ApexTamilDay15 {

    List<string> fullName = new  List<string>();
    
    public List<string> getFullName(List<string> firstName,List<string>lastName){
        
        for(Integer index=0;index<firstName.size();index++){
            
            fullName.add(firstName[index]+' '+lastName[index]);
        }
        return fullName;
    } 
}