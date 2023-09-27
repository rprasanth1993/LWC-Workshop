import { LightningElement,api } from 'lwc';

export default class Day16DoitChild extends LightningElement {
    //getting the value from parent
    @api employeefromparent;


    childhandleClick(){
        console.log('dafdsfb');
        const newevent = new CustomEvent("childclick",
        {detail : this.employeefromparent            
        }
        )
        this.dispatchEvent(newevent);
       console.log('valuechecking');
    }
}