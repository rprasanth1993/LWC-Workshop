import { LightningElement } from 'lwc';
import {CloseActionScreenEvent} from  "lightning/actions";

export default class CreateTaskAction extends LightningElement {
    isAction = true;

    handleClick(){
        //calling child component function
        this.refs.createToDo.handleParentClick();
    }

    closeAction(){
        this.dispatchEvent(new CloseActionScreenEvent);
    }
}