import { LightningElement } from 'lwc';

export default class CustomEventChildComp extends LightningElement {
    handleClick(event) {
        event.preventDefault();
        const buttonName = event.target.label;
        const selectEvent = new CustomEvent('mycustomevent', {
            detail: buttonName
        });
       this.dispatchEvent(selectEvent);
    }
}