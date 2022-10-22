({
    handleClick : function(component, event, helper) {
        var clickedButton = event.getSource().get("v.label");
        
        //Step 4: Get the component event by using the name value from aura:registerEvent
        var cmpEvent = component.getEvent("cmpEvent");
        cmpEvent.setParams({
            "buttonName" : clickedButton });
        cmpEvent.fire();
    }
})