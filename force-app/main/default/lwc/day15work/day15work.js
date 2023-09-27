import { LightningElement } from 'lwc';

export default class Day15work extends LightningElement {

     courses =['apex','lwc','js'];

     employee= [

        {Name: 'Prasanth',Position: 'developer', salary: 25000, isworking:true},
        {Name: 'Raj',Position: 'developer', salary: 15000, isworking:false},
        {Name: 'Ganesh',Position: 'developer', salary: 23000, isworking:true}
     ]
    
    handleClick(){

    }
    handleDivClick(event){
        alert(event.target.dataset.value);
    }
}