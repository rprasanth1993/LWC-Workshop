import { LightningElement } from 'lwc';

export default class Day6 extends LightningElement {

  //class level
  //x = 10;

    //handleClick(){
       // let x = 10;
        /*console.log('classlevel:'+this.x);
        console.log('method level:'+x); */
        
        /*console.log('x='+x);
        console.log(y);
        console.log('welcome to learn');*/
        //alert('happy to learn lwc')
        //console.log('good morning')

       /* try{
            console.log('x='+x);
            console.log(y);
            //console.welcome('welcome to learn');
        }
        catch(e){
            console.log(e);
        }
        console.log('welcome to learn');
    }*/

    //function to sum two numbers
    sum (x,y)
    {
        return x+y;
    }
    handleClick()
    {
        let result=this.sum(10,20);
        console.log('sum of two values:'+result);
    }
}