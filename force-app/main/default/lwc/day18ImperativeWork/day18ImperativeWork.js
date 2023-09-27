import { LightningElement } from 'lwc';
import getOpportunity from '@salesforce/apex/day18Imperative.getOpportunity';

export default class Day18ImperativeWork extends LightningElement {
    
    opportunityRecords;
    amount;

    handleClick(){
        //1.get the value from opportunity by using query selector
        //if w have more than one input box we can't use tag that case we are going to class
        this.amount = parseFloat(this.template.querySelector('lightning-input').value); // tag or class
        //2.call the controller method imperative way
        getOpportunity({Amt:this.amount})
        //.then((result)=>alert('result::'+JSON.stringify(result)))
        .then((result)=>this.opportunityRecords=result)
        .catch((error)=>{

        })
    }
}