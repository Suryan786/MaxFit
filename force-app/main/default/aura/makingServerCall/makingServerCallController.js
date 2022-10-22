({
    // handleClick : function(component, event, helper)
    doInit : function(component, event, helper)  {
        var action = component.get("c.getAccounts");
        
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                var myResult = response.getReturnValue();
                // Get value from back-end to front-end
                component.set("v.accList", myResult);
            }
            else if (state === "INCOMPLETE") {
                // do something
            }
                else if (state === "ERROR") {
                    
                }
        });
        $A.enqueueAction(action);
    }   
})