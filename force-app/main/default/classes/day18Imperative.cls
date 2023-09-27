public  class day18Imperative {
    
    @AuraEnabled(cacheable=true)
    public static List<Opportunity>getOpportunity(Decimal Amt) {
        return[select id,Name,Amount
              from Opportunity
              where Amount>=:Amt];
    }
}