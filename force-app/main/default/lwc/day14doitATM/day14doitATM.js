import { LightningElement} from 'lwc';

export default class Day14doitATM extends LightningElement {

   openingBalance = 15000;
  // @track currentBalance = 5000;
   enteredAmount;
    
   handleChange(event){
        this.enteredAmount = parseInt(event.target.value);
        console.log('value of the entered amount',this.enteredAmount);
    }

    withdrawhandleClick(){
       this.openingBalance= this.openingBalance - this.enteredAmount;
      // this.currentBalance -= this.enteredAmount;
      console.log('withdraw value',this.openingBalance);
    }

    deposithandleClick(){
        this.openingBalance = this.openingBalance + this.enteredAmount;
        //this.currentBalance += this.enteredAmount;
        console.log('deposit value',this.openingBalance);
    }
}