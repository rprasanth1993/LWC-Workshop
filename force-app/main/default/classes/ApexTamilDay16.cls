/*
* @author : Prasanth
* @date   : 28/05/2023
* @description : day16 collection--->List adding the student and day17 list of list
* 
* */
public class ApexTamilDay16 {

    String name;
    Integer rollNo;
    List<Integer> markList;
    Integer total;
    String result;
    final Integer passMark = 40;
   
    //for storing the student details first we will add the object.so while creating the object we are setting the values so we are going with constructor
    //here in marks we stored in different value egg:int m1,int m2,int m3 so each time we are entering in the mark,so we used List<Integer> mark
   // while usingg constructor we should follow the same as class and method
    public ApexTamilDay16(Integer rollNo,String name,List<Integer>markList){
        this.rollNo = rollNo;
        this.name = name;
        this.markList = markList;
    }
    
    public void calculateResult(){
        result ='pass';
        for(Integer m:markList){
            if(m<passMark){
               result ='fail';
                break;
            }
        }
    }
    public void calculateTotal(){
        for(Integer m :markList){
            total = total + m; // total+=m; both are similiar
        }
    }
    
    public void studentInfo(){
        system.debug('rollNo:'+rollNo);
        system.debug('name:'+name);
        system.debug('total:'+total);
        system.debug('result:'+result);
    }
}