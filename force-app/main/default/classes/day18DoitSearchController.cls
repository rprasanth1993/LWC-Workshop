public with sharing class day18DoitSearchController {

    @AuraEnabled(cacheable=true)
    public static List<Contact> getContact(String searchKey) {
        string key = '%' + searchKey + '%';
        return [select Id,LastName,Email,Phone
                from Contact where 
                LastName Like:key];
    }
}