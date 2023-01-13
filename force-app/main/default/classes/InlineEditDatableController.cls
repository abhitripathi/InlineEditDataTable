public with sharing class InlineEditDatableController {
    @AuraEnabled(Cacheable = true)
    public static List<Contact> getContacts(string recordId) {
        return [SELECT Id, Name, FirstName, LastName, Phone, Email 
                FROM Contact where AccountId =: recordId];
    }
}