public with sharing class TicketController {
    
    // Essa tag @AuraEnabled é o que permite o nosso front-end (LWC) enxergar este método
    @AuraEnabled(cacheable=true)
    public static List<Ticket__c> getOpenTickets() {
        // Fazemos uma busca (SOQL) trazendo os tickets mais recentes que não estão resolvidos
        return [
            SELECT Id, Name, Status__c, Descricao__c 
            FROM Ticket__c 
            WHERE Status__c != 'Resolvido' 
            ORDER BY CreatedDate DESC 
            LIMIT 10
        ];
    }
}