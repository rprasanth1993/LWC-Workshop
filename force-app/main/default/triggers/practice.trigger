trigger practice on Account(after insert){
    practiceaccountcontacthandler.demoaccount(Trigger.new);
}