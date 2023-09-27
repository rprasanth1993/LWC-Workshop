trigger demopp2 on Account (after update) {
    dummyaccounthandler.accmethod(Trigger.new,Trigger.oldmap);

}