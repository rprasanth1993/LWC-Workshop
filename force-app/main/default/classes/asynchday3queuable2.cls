public class asynchday3queuable2 implements Queueable {
    
    public void execute(QueueableContext ctx){
        system.debug('second que');
    }
}