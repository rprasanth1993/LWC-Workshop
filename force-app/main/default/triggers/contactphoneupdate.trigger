trigger contactphoneupdate on Contact (after insert,after update) {
 /*   List<account> ltat = new List<account>();
    Map<Id,Contact> mapcon = new Map<Id,contact>();
    for(contact con:trigger.new){
        mapcon.put(con.Accountid,con);
    }
    
Map<Id,Account> mapacc = new Map<id,Account>([select id,name,phone from account where id in:mapcon.keyset()]);
   
    for(account acc:mapacc.values()){
        acc.phone = mapcon.get(acc.id).phone;
        ltat.add(acc);
    }
  update ltat;*/
  }