({
	handleComponentEvent : function(component, event, helper) {
		var message = event.getParam("buttonName");
        component.set("v.buttonNameParent", message);
        
        // Passing the child values in parent to show alert message.
        // alert ("This is a parent component and value is "+message);
	}
})