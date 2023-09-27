public with sharing class ToDoController {
    
    @AuraEnabled
    public static string saveToDo(String title,Date dueDate ){
        try {
            
            ToDo__c todo = new ToDo__c();
            todo.Title__c = title;
            todo.Due_Date__c = dueDate;
            insert todo;
            return 'success';
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }


    @AuraEnabled(cacheable=true)
    public static List<ToDo__c> getToDoList(string taskStatus){
        return [select Id,Title__c,Due_Date__c from ToDo__c where Status__c=:taskStatus order by Due_Date__c];
    }

    //update record
    @AuraEnabled
    public static string updateToDo(Id toDoId){
        try {
            ToDo__c todo = [select Id,Status__c from ToDo__c where Id=:toDoId];
            todo.Status__c ='Completed';
            update todo;
            return 'success';
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}