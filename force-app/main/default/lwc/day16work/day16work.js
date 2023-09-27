import { LightningElement,track } from 'lwc';

export default class Day16work extends LightningElement {

    courses =['apex','lwc','js'];
    @track employee= [

        {Name: 'Prasanth',Position: 'developer', salary: 25000, isworking:true},
        {Name: 'Raj',Position: 'developer', salary: 15000, isworking:false},
        {Name: 'Ganesh',Position: 'developer', salary: 23000, isworking:true}
     ]

     handleClick(){
        // here we added the push in the array without track,but in O/P it's not showing in list,when console.log it's coming
        // because it not primitive datatypes(boolean,string and numbers).
        // so that we are using @track to makie it in the reactive which shown in the list of added value
        this.employee.push({Name: 'vijay',Position: 'developer', salary: 22000, isworking:false},
                            {Name: 'Kishore',Position: 'developer', salary: 21000, isworking:true});
        console.log('employee.details',this.employee);
     }
}