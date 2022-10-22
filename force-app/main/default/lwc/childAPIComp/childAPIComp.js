import { api, LightningElement, track } from 'lwc';

export default class ChildAPIComp extends LightningElement {
    @track presidentName = 'Putin';

    @api electionResult(){
        this.presidentName = 'Putin Jr';
    }
    
}