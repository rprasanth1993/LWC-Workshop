import { LightningElement } from 'lwc';

export default class Day16parentwork extends LightningElement {
    message = 'hi prasanth';
    messagefromchild;

    handleclickfromchild(event){
        this.messagefromchild = event.detail;
        // for object passing value get eg:
    // this.messagefromchild = event.detail.firstname;
      
       // alert(event.detail);
    }
}