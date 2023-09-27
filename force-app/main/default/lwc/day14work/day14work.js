import { LightningElement } from 'lwc';

export default class Day14work extends LightningElement {
    // from js to html
    message = 'Prasanth';
    student = {
        Name: 'rajesh',
        Department : 'Mechanical',
        year:'2014'
    }
        courses = ['CIVIL','ECE','EEE'];

    get courseName(){
        return this.courses[1];
    }
 
    //here i am making the firstname and lastname value as null
    firstname='';
    lastname='';

    // adding the value for number check in string to number,i didn't binding in html ,if want we can check
    mark;
    //html to js
    //we are doing two databinding
    handleChange(event){
        // event will represent the onchange and target represt the text box,i mean the input
        console.log(event.target.value);
        console.log(event.target.name);
        //in html entering the value and data is passed in the form of event,
        //from the event  object took the value and set into the message
        this.message = event.target.value;      
    }
    handleFirstChange(event){
        this.firstname = event.target.value;
    }

    handleSecondChange(event){
        this.lastname = event.target.value;
    }

  
    // now i am using all event in single method
    handleChange1(event){
        if(event.target.name == 'txtFirstName'){
            this.firstname = event.target.value;
              //incase if i want to add the number in firstname.it taking as string only so we need to change into integer
            this.mark = parseInt(event.target.value);
        }
        else if(event.target.name == 'txtLastName'){
             this.lastname = event.target.value;
        }
    }
}