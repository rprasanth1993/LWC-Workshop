import { LightningElement } from 'lwc';

export default class Boltday3 extends LightningElement {
    listofvalues = 'prasanth';
    showme = false;
    handlechange(event){
        this.showme = event.target.checked;
    }
}