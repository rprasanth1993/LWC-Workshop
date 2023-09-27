//write a trigger to prevent the users from deleting the accounts
trigger apextriggercase1 on Account (before delete) {

    /*for(Account acc :Trigger.old){
        acc.addError('preventing account from delete');
    }*/
    
    apextriggercase1handler.predel(Trigger.old);
}