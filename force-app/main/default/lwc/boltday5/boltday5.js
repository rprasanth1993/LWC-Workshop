import { LightningElement } from 'lwc';

export default class Boltday5 extends LightningElement {
    tech1 = 'prasanth';
     tech2 = '547962';
     tech3 = 'pll@gmail.com';

   
    handleChange1(event) {
        this.tech1 = event.target.value;
        //js is case sensitive so what u gave in name value in html it should same
}
handleChange2(event) {
this.tech2 = event.target.value;
}
handleChange3(event) {
this.tech3 = event.target.value;
}
}