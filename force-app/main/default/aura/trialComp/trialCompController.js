({
    handleClick : function(component, event, helper) {
        var firstName = component.find('firstNameId').get('v.value');
        var lastName = component.find('lastNameId').get('v.value');
        var email = component.find('emailId').get('v.value');
        var phoneNumber = component.find('PhoneNumber').get('v.value');
        // Whenever we use "force:hasRecordId" it automatically includes a record Id to a standard attribute called recordId.
        // "recordId" is a standard aura attribute.
        var accId = component.get("v.recordId");
        
        var action = component.get("c.createContact");
        action.setParams({fName:firstName, lName:lastName, emailJs:email, phoneJS:phoneNumber, accountId:accId})
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                var contactId = response.getReturnValue();
                // showToast message:
                // "$A.get" used because its a system event. 
                // "e" stands for system event.
                // "force:showToast" is the library where it takes particular showToast message.
                var toastEvent = $A.get("e.force:showToast");
                toastEvent.setParams({
                    "title": "Success!",
                    "message": "The record has been created successfully.",
                    "type":"Success" // Default type is Info unless it is defined.
                });
                toastEvent.fire();
                $A.get("e.force:closeQuickAction").fire();
                
                var navEvt = $A.get("e.force:navigateToSObject");
                navEvt.setParams({
                    "recordId": contactId,
                    "slideDevName": "related" // Used for Salesforce 1 app.
                });
                navEvt.fire();
            }
            else if (state === "INCOMPLETE") {
                // do something
            }
                else if (state === "ERROR") {
                    var toastEvent = $A.get("e.force:showToast");
                    toastEvent.setParams({
                        "title": "Error!",
                        "message": "Please check the information.",
                        "type":"Error" 
                    });
                    toastEvent.fire();
                }
        });
        $A.enqueueAction(action);
        
    },
    hideAction : function(component, event, helper) {
        component.set("v.showOutputPanel", false);
    }
})