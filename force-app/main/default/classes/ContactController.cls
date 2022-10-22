public with sharing class ContactController {
    @auraEnabled(cacheable=true) 
    public static List<Contact> getContactLists() { 
        return [SELECT NAME FROM Contact LIMIT 5]; 
    } 
}