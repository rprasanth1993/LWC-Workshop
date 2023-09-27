import { LightningElement } from 'lwc';

export default class Day14doitCALC extends LightningElement {

    firstNumber;
    secondNumber;
    result;

    handleChange(event){
        if(event.target.name =='number1')
        {
            this.firstNumber = parseInt(event.target.value);
            console.log('firstnumber details',this.firstNumber);
        }
        else if(event.target.name =='number2')
        {
            this.secondNumber = parseInt(event.target.value);
            console.log('secondnumber details',this.secondNumber);
        }
    }

    addhandleClick(){
        this.result = this.firstNumber + this.secondNumber;
        console.log('add result',this.result);
    }
    subhandleClick(){
        this.result = this.firstNumber - this.secondNumber;
        console.log('sub result',this.result);
    }
    multihandleClick(){
        this.result = this.firstNumber * this.secondNumber;
        console.log('multi result',this.result);
    }
    divhandleClick(){
        this.result = this.firstNumber / this.secondNumber;
        console.log('div result',this.result);
    }
}