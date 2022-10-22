import { LightningElement, track } from 'lwc';

export default class CalculatorComp extends LightningElement {
@track firstNumber;
@track secondNumber;
@track result;
    handleChanges(event){
        if(event.target.name==='input1'){
            this.firstNumber = event.target.value;
        }
        if(event.target.name==='input2'){
            this.secondNumber = event.target.value;
        }
    }
    handleClick(event){
        if(event.target.label==='Addition'){
            this.result = parseInt(this.firstNumber)+ parseInt(this.secondNumber);
        }
        if(event.target.label==='Multiplication'){
            this.result = parseInt(this.firstNumber)* parseInt(this.secondNumber);
        }
        if(event.target.label==='Division'){
            this.result = parseInt(this.firstNumber)/ parseInt(this.secondNumber);
        }        
    }
}