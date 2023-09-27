import { LightningElement } from 'lwc';

export default class Day16DoitParent extends LightningElement {
    employee =[
        {Code: '001', Name: 'Prasanth',Position: 'developer', salary: 25000, isworking:true},
        {Code: '002', Name: 'Raj',Position: 'developer', salary: 15000, isworking:false},
        {Code: '003', Name: 'Ganesh',Position: 'developer', salary: 23000, isworking:true}
    ]

    messagefromchild;
    handleclickfromchild(event){
      
            // alert('sfdfb');
            // storing the variable in messagefromchild and in console it showing object 
            // for avoiding that we are using JSON.stringigy to show the object value
            console.log(JSON.stringify(event.detail));
            this.messagefromchild = event.detail;
            // this.a = event.detail;
            // this.messagefromchild = JSON.stringify(a.Name);
           // alert(JSON.stringify(event.detail));
       
        }
        // alert('sfdfb');
        // console.log(JSON.Stringify(event.detail));
        // //this.messagefromchild = event.detail;
        // alert(event.detail);
    }