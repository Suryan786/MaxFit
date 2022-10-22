({
	handleClick : function(component, event, helper) {
		var buttonName = event.getSource().get("v.label");
        var firstNumber = component.find('firstNumber').get('v.value');
        var secondNumber = component.find('secondNumber').get('v.value');
        var myRes=0;

        if(buttonName == "Addition"){
            myRes = parseInt(firstNumber) + parseInt(secondNumber);
            component.set("v.Result", myRes);
            
        }else if(buttonName == "Subtraction"){
            myRes = parseInt(firstNumber) - parseInt(secondNumber);
            component.set("v.Result", myRes);
            
        }else if(buttonName == "Multiplication"){
            myRes = parseInt(firstNumber) * parseInt(secondNumber);
            component.set("v.Result", myRes);
            
        }
	}
})