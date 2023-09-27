import { LightningElement,api } from 'lwc';

export default class Day16childwork extends LightningElement {

    // here variable should be small letter no camelcase
    @api messagefromparent;

    handleClick(){
        console.log('zzzzz');
        // 1. create an event
        // 2. dispatch  the event-fire
        // 3. catch the event in the parent - handler

        // custom event have two properties 1.event 2.data
        //event name can give any name eg customevent("prasanrth")
        // data should be an object format ,if want to pass multiple values,here we tried in normal string
        // while using the data key name should be detail(couldn't change)
        //instead of "event" we can give any name
        const event =  new CustomEvent("buttonclick",{
           detail:'hi from child side'
            // object passing eg:
        // detail: {firstname:'raj',lastname:'kumar'}
        // detail: [{firstname:'raj',lastname:'kumar',Number:'001'},
        //         {firstname:'Naresh',lastname:'demo',Number:'002'},
        //         {firstname:'ranjith',lastname:'das',Number:'003'}]
        })

        // dipatch the event
        this.dispatchEvent(event);
        console.log('details checking');
    }
}