import { LightningElement } from 'lwc';

export default class ParentAPIComp extends LightningElement {
    handleClick(){
        this.template.querySelector("c-child-a-p-i-comp").electionResult();
    }
}