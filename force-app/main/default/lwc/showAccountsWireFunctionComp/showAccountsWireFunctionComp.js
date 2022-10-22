import { LightningElement, wire, track } from 'lwc';
import getAccounts from '@salesforce/apex/showAccountsCompController.getAccounts';
export default class ShowAccountsWireFunctionComp extends LightningElement {
    @track accounts;
    @wire(getAccounts)
    wiredAccounts({ error, data }) {
        if (data) {
            this.accounts = data;
        } else if (error) {
            
        }
    }
}