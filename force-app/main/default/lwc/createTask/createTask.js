import { LightningElement,api } from 'lwc';
import saveToDo from '@salesforce/apex/ToDoController.saveToDo';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';

export default class CreateTask extends LightningElement {
    //below is parameter we can give anyname 
    //but what is the parameter using here it should be value in html of corresponding lightning input
    firstTask;
    secondDate;

    //here making the showduedate is false(not appear in default) once we make true in below logic in js  it will display
    showDueDate = false;
    showSave = false;

    
    //parent is passing the component(createtaskAction) to child
    @api targetParent;

    connectedCallback(){
        console.log('**target parent***:',this.targetParent);
    }

    handleChange(event){
        //below i used try cache the reason is if i missed any parameter not properly used or missed keyword(this.)
        //in UI sorry to interrupt popup will appear there unable to identify the error,
        //so i am using try cache to identify the error
        try{
           //getting the fieldname by using below
        //event.target.name it will return the targeted name unique because we provided different names in lightning input
        const fieldName = event.target.name;
       
        if(fieldName==='tasktitle'){
            // for access the parement we need the keyword this
            this.firstTask = event.target.value;
            console.log('1st value :',this.firstTask);
            //changing the rendering value as true
             if(this.firstTask !=""){
                this.showDueDate = true;
            }
             else{
                 this.showDueDate = false;
             }
        }
        else if(fieldName==='duedate'){
            this.secondDate = event.target.value;
            console.log('2nd value:',this.secondDate);
            //here we adding the targetparent rendering coindition to hide the button
            this.secondDate!="" && this.targetParent!=true? (this.showSave=true) : (this.showSave=false);
        } 
        }
        catch(error){
            console.log('error:',error);
           
        }
        
    }

    handleClick(){
        console.log('***button click on child***');
        saveToDo({title:this.firstTask,dueDate:this.secondDate})
        .then((result)=>{
            if(result === "success"){
                this.firstTask="";
                this.secondDate="";

                const evt = new ShowToastEvent({
                    title:'success',
                    message:'A new item has been added in your todo list',
                    variant:'success'
                });
                this.dispatchEvent(evt);
                //bubbleevnt
                this.dispatchEvent(new CustomEvent('refreshtodo'));
                //createtaskaction popupclose
                if(this.targetParent === true){
                    //this time passing value to parent
                    const selectedEvent = new CustomEvent("closeaction",{
                        detail:result
                    });
                    this.dispatchEvent(selectedEvent);
                }
            }
        })
        .catch((error)=>{
            console.log("error:",error);
            
            const evt = new ShowToastEvent({
                title:'Error',
                message:error.body.message,
                variant:'error'
            });
            this.dispatchEvent(evt);
        });
    }

    @api
    handleParentClick(){
        this.handleClick();
    }
}