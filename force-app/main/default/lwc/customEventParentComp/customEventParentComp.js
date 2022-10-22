import { LightningElement, track } from 'lwc';

export default class CustomEventParentComp extends LightningElement {
    @track buttonName;
    handleCustomEvent(event) {
        this.buttonName = event.detail;
    }
}