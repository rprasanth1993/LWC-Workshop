import { LightningElement } from 'lwc';

export default class Day14doit extends LightningElement {

    a;
    b;
    c;
    largest;

    handleChange(event){    
        if(event.target.name =='number1'){
            this.a = parseInt(event.target.value); 
            console.log('value1',this.a);
        }      
           /*this.a = parseInt(event.target.value); 
            console.log('value1',this.a);*/
        else if(event.target.name =='number2'){
            this.b = parseInt(event.target.value);  
            console.log('value2',this.b); 
        }
             
        else (event.target.name =='number3')
        {
            this.c = parseInt(event.target.value);  
            console.log('value3',this.c);
        }            
        }
       /* this.a = parseInt(event.target.value);
        console.log('value1',this.a);
        this.b = parseInt(event.target.value);
        console.log('value2',this.b);
        this.c = parseint(event.target.value);
        console.log('value3',this.c);*/
  
    handleClick(){
      if(this.a>this.b && this.a>this.c){
            console.log('a highest value is:',this.a);
            this.largest = this.a;
            //this.a = parseInt(event.target.value);
           // alert(this.a);
        }
        else if(this.b>this.c && this.b>this.a){
            console.log('b highest value is:',this.b);
            this.largest = this.b;
          //  this.c = parseint(event.target.value);
         // alert(this.b);
        }
        else{
            console.log('c highest value is:',this.c);
          //  this.b = parseInt(event.target.value);
          this.largest = this.c;
         // alert(this.c);
        }
    }    
}