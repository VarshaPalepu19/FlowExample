public with sharing class recordForm {
    public recordForm() {

    }
    @AuraEnabled(cacheable=true)
    public static List<Lead> getDetails(){
        return[
            SELECT
            Name,
            MobilePhone,
            Title
            FROM
            Lead
            LIMIT 10
        ];
    }
}
