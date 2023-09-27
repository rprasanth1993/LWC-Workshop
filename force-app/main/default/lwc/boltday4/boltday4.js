export default class Boltday4 extends LightningElement {
    
    fullName = '';
    email = '';
    phone = '';
    handleChange(event) {

        console.log()
        const field = event.target.name; //const using here to identify to fields  
        if (field == 'fullName') {
            console.log('###Inside Full Name');
            this.fullName = event.target.value;
        }
        else if (field == 'email') {
            this.email = event.target.value; //js is case sensitive so what u gave in name value in html it should same
        }
        else if (field == 'phone') {
            this.phone = event.target.value;
        }
    }
    get upperCase() {
        return `${this.fullName}`.toUpperCase(); //to chnage into uppercase
    }
}