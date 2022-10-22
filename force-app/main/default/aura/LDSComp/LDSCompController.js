({
    myAction : function(component, event, helper) {
        //alert(component.get("v.sobjectName"));
        var toastEvent = $A.get("e.force:showToast");
        toastEvent.setParams({
            "title": "Success!",
            "message": "Record is successfully updated.",
            "type":"Success" 
        });
        toastEvent.fire();
    }
})