trigger apextriggerday4 on Account (before insert,before update,before delete,after insert,after update,after delete) {

  //apextriggerday4handlerclass.run();
  if(trigger.isbefore && trigger.isupdate){
   practhot.htcld(Trigger.new);
 }
}