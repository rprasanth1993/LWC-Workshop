import { LightningElement } from 'lwc';

export default class Day7work extends LightningElement {

    //class level declaration

    // in class or properties  level we can't var,let,const
    // x = 10;
    // handleClick(){
        
    //     //alert('started to learn lwc');

    //     //function level declaration only we can use let,const,var
    //     // integer x = 10 ---->apex
    //     // here in js
    //     // var x = 10;--->js
    //     // const y = 10; --->js
    //     // let z = 10; --->js

    // // var and let difference
    // // var---global scope
    // // let --local scope


    //     let x = 10;
    //     console.log('class or properties level='+this.x); 
    //     // for console.log in class level we should use like abouve eg: this.x ...x is variable declared in the scenario
    //     console.log('functionl='+x);
    //     // for functional level console we should use the normal varible name
    //     console.log('started to learn lwc');
    // }

    // x = 10;
    // handleClick(){

    //     let x = 10;
    //     try{
    //         console.log('property level='+this.x);
    //         console.log('function level='+x);
    //         console.log(y);
           
    //     }
    //     catch(e){ 
    //         // instead of e we can use anything variable or anything
    //         console.log(e);
    //     }
    //     console.log('welcome the the js');
        
    //     // console.log(y) won;t print.because the variable not declared .it thrown the error
    //     // we catch the error in try catch method and after the next line of catch scope it will start print


    //     // here properlty level and function level only display in o/p but error msh won;t display 
    //     // for that we shoud use try catch method
    // }


    // function sum of two numbers

    sum (x,y){
        return x+y;
    }
    handleClick(event){
        let result = this.sum(4,6);
        console.log('sum of two values:',result);
    }
}