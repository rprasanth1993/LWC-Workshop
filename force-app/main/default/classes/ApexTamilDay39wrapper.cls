/*
* @author : Prasanth
* @date   : 04/07/2023 -->day39 
* @description : wrapper class
* 
* */

//wrapper class,generally used to get the value of unrelationship object
//eg :scenario account and contact consider there is no relation b/w them
// enaku account la irundh 2 data contact irundha venum.but there is no relation.so account declare pannum podhu namma contact object serathu declare pani adhodu parameter pass pandrom
// contact object details account inner class initilaze pandra

public class ApexTamilDay39wrapper {

    public string employeeName;
    public string position;
    
    // i want to acces the department object(eg:scenario comes i want enter the dept information while the employee details)..so here i declare the the object directly
    
      public Department dep;
    
    //below we used constructor so class and methodname should be same
    // employeclass(object name employee)
    public ApexTamilDay39wrapper(string empName,string pos,string departName,string departHod){
        employeeName = empName;
        position = pos;
         dep = new Department(departName,departHod);
    }
    
    public class Department{
      public string deptName;
      public string deptHod; 
        
      // departmentclass(object name department)
        public Department(string dName,string dHod){
            deptName = dName;
            deptHod = dHod;
        }
    }
}