import { LightningElement, track } from 'lwc';
import getAccounts from '@salesforce/apex/showAccountsImperativeCompController.getAccounts';
export default class ShowAccountsImperativeComp extends LightningElement {
    @track accountList;
    @track error;
    handleClick(){
        getAccounts()
            .then(result => {
                this.accountList = result;
            })
            .catch(error => {
                this.error = error;
            }); 
    }
}