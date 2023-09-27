public class ApexTamilday6Doitstudent {
    decimal passMark; // here i am not able to comment because the below grade i use the value in marks
	decimal physics;
    decimal chemistry;
    decimal maths;
    decimal total; 
    decimal sum ;
    decimal average;
 	
    public void totalMarkWithAverage(decimal physics,decimal chemistry,decimal maths){
        decimal total = physics+chemistry+maths;
        system.debug('total:'+total);
        decimal sum = (total)/300 ; 
        system.debug('sum of mark:'+sum);
        decimal average = (sum)*100 ;
        system.debug('average mark:'+average);
    }
    
    public void studentGradeStatus(decimal physics,decimal chemistry,decimal maths,decimal passMark){        
        if((physics>=passMark)&&(chemistry>=passMark)&&(maths>=passMark)){
            system.debug('details of mark status:'+'pass');
        }
           else {
               system.debug('details of mark status:'+'fail');
           }
    }
    
    public void gradeStatus(){
         if((physics>=passMark)&&(chemistry>=passMark)&&(maths>=passMark)){
        if(average>90){
            system.debug('grade:'+'s');
        }
        else if(average>80) {
            system.debug('grade:'+'A');
         }
       else if(average>80) {
          system.debug('grade:'+'B');
            } 
        else if(average>80) {
           system.debug('grade:'+'c');
             } 
        else {
         system.debug('no grade');
         }
         }else{
            system.debug('Re appear the exam'); 
         }
    }
}