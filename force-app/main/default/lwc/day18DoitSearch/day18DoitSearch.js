import { LightningElement} from 'lwc';
import getContact from '@salesforce/apex/day18DoitSearchController.getContact';

export default class Day18DoitSearch extends LightningElement {

    lastname='';
    contacts;
    error;

    searchHandleChange(event){
        this.lastname = event.target.value;
    }

    searchHandleClick(){
        console.log('checking');
    getContact({searchKey:this.lastname})
    .then((result)=>{
        console.log('result values',JSON.stringify(result));
            this.contacts = result;
            this.error = undefined;
        })
        .catch((error)=>{
            this.contacts = undefined;
            this.error = error;
        })
    }
    // @wire(getContact,{searchKey:this.lastname})
    // wiredfunction(result){
    //     console.log('data check',JSON.stringify(result))
    //     // data is std we have to use the data as keyword 
    //     if(result.data){
    //         this.contacts = result.data;
    //         this.error = undefined;
    //     }

    //     else if(result.error){
    //         this.contacts = undefined;
    //         this.error = result.error;
    //     }
    // }
}