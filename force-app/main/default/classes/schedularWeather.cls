global class schedularWeather implements Schedulable {
    global void execute(SchedulableContext context) {
        List<Account> accList = [SELECT Id, BillingCity,temperature__c FROM Account ];
        List<Account> updatedAccList = new List<Account>();
        for(Account acc : accList) {
            Integer temp = Integer.valueOf(weatherApi.getWeatherbyCity(acc.BillingCity));
            acc.temperature__c = temp;
            updatedAccList.add(acc);
        }
        update updatedAccList;
        /*List<Account> updatedAccounts = [SELECT Id, BillingCity,temperature__c FROM Account ];
        for(Account acc : updatedAccounts) {
            system.debug(acc.Id+' '+acc.BillingCity+' '+acc.temperature__c);
        }*/
    }
}