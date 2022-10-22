({
	doInit : function(component, event, helper) {
		alert('This is GrandChild and Event is fired from here');
        var cmpEvt = component.getEvent("bubbleCaptureEvent");
        cmpEvt.fire();
	},
    handleCapture : function(component, event, helper) {
        alert('This is GrandChild');
    }
})