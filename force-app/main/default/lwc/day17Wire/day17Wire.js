import { LightningElement,wire } from 'lwc';
//import method syntax:
//import apexmethodname from '@salesforce/apex/ClassName.methodName
import getaccount from '@salesforce/apex/day17WireClass.getaccount';
import getaccountwithParam from '@salesforce/apex/day17WireClass.getaccountwithParam';

export default class Day17Wire extends LightningElement {
    // @wire(apexmethodname)
    // incase if we have parameter,we have to pass the parameter in object
    // @wire(apexmethodname,{apexMethodParams})
    //wiredproperty
    // accounts

    // @wire(getaccount)
    // accounts

    //wired function
    // accounts
    // error

    // @wire(getaccount)
    // // eg:here function name -->wiredfunction(anyname can give)
    // wiredfunction(result){
    //     console.log(JSON.stringify(result))
    //     if(result.data){
    //         this.accounts = result.data;
    //         this.error = undefined;
    //     }
    //     else if(result.error){
    //         this.accounts = undefined;
    //         this.error = result.error;
    //     }
    // }


    // reactive wired function

    accounts;
    error;
    recId;

    // for reactive purpose we are using $ symbol
    @wire(getaccountwithParam,{recordId:'$recId'})
    wiredfunctionwithParam(result){
        console.log('data check',JSON.stringify(result))
        // data is std we have to use the data as keyword 
        if(result.data){
            this.accounts = result.data;
            this.error = undefined;
        }

        else if(result.error){
            this.accounts = undefined;
            this.error = result.error;
        }
    }

    handleClick(){
        this.recId = '0015g000003ZmtqAAC';
    }     
}