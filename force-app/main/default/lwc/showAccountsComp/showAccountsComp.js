import { LightningElement, wire } from 'lwc';
import getAccounts from '@salesforce/apex/showAccountsCompController.getAccounts';
export default class ShowAccountsComp extends LightningElement {
    @wire(getAccounts) accounts;
}