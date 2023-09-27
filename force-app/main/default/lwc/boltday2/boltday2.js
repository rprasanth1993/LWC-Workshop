import { LightningElement } from 'lwc';

export default class Boltday2 extends LightningElement {

    myvalue = 'prasanth';
    handlechange(event){
        this.myvalue = event.target.value;
    }
}