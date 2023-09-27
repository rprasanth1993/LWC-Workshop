import { LightningElement, wire,api} from 'lwc';
import getToDoList from '@salesforce/apex/ToDoController.getToDoList';
import updateToDo from '@salesforce/apex/ToDoController.updateToDo';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
import {refreshApex} from '@salesforce/apex';

export default class ToDoList extends LightningElement {

    toDoList;
    @api taskStatus;

    //using getter to bind the data
    //dynamic page title
    get pageTitle(){
        return this.taskStatus + "Tasks";
    }

    get showButton(){
        return this.taskStatus === "Pending" ? true : false;
    }

    @wire(getToDoList,{taskStatus:'$taskStatus'})
    wiredToDoList(result){
        this.wiredToDoListResult = result;
        if(result.data){
            this.toDoList = result.data;
        }
        else if(result.error){
            const evt = new ShowToastEvent({
                title:"Error",
                message:result.error.body.message,
                variant:"error"
            });
            this.dispatchEvent(evt);
        }
    }

    //refreshlist
    @api 
    refreshList(){
        refreshApex(this.wiredToDoListResult);
    }

    handleClick(event){
        //event.target.dataset.recordid it's syntax to get values from dataset
        updateToDo({toDoId:event.target.dataset.recordid})
        .then((result)=>{
            if(result === "success"){

                const evt = new ShowToastEvent({
                    title:'success',
                    message:'Task completed successfully!',
                    variant:'success'
                });
                this.dispatchEvent(evt);
                //bubbleevnt
                this.dispatchEvent(new CustomEvent('refreshtodo'));
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
}