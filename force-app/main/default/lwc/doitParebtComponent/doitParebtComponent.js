import { LightningElement } from 'lwc';

export default class DoitParebtComponent extends LightningElement {
    selectedEmployee = null;
    isShow = false;
    employeeList =[
        {code: '001', name: 'Prasanth',position: 'developer', salary: 25000, isworking:true},
        {code: '002', name: 'Raj',position: 'developer', salary: 15000, isworking:false},
        {code: '003', name: 'Ganesh',position: 'developer', salary: 23000, isworking:true}
    ]

    handleclickfromchild(event){
        const employeeName = event.detail;
        console.log('Parent==='+employeeName);
        if(employeeName !== null){
            this.isShow = true
        }
        console.log("employeeName==="+employeeName);
        this.selectedEmployee = this.employeeList.find(
            item => item.name === employeeName
            
        );
    }
}