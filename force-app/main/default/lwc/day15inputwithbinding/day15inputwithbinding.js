import { LightningElement,track } from 'lwc';

export default class Day15inputwithbinding extends LightningElement {

    @track programmingLanguages = ['Apex','JS','Java','Python'];
    listitem;
    a;
    // for template purpose we used the boolean
    @track isSuccess = false;
    handleChange(event){       
        this.listitem = event.target.value;    
    }

    handleClick(){  
        if(this.programmingLanguages.includes(this.listitem)==false){
            this.isSuccess = false;
            this.listitem = this.programmingLanguages.push(this.listitem);        
            console.log('check the list item',this.listitem);  
                      
        }
        else{
            this.isSuccess = true;
            this.a = 'variable already exists';
        }     
              
   }
}