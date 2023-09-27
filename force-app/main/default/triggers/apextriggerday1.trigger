//trigger apextriggerday1 on Account (before insert) {
trigger apextriggerday1 on Account (before insert,after insert) {
 
    system.debug('inside the trigger');
    
}