import { LightningElement,api } from 'lwc';

export default class DoitChildComponent extends LightningElement {
    @api employeeList;
    changeHandler(event){
       
    console.log('selected1===='+event.target.name);
        const newevent = new CustomEvent('childclick',
        {
            detail : event.target.name           
        });
        this.dispatchEvent(newevent);
       
    }
}