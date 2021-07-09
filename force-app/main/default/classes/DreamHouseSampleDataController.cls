global with sharing class DreamHouseSampleDataController {

    @RemoteAction
    global static void deleteAll() {
        DELETE [SELECT ID FROM property__c];    
        DELETE [SELECT ID FROM broker__c];
        
        for(Integer i = 0; i<20; i++){
            List<Account> accList = [SELECT Id, Name FROM Account];
            accList[0].Name = 'adasdsda';
            update accList;
        }
    }    
}
