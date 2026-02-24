trigger TicketTrigger on Ticket__c (before insert, before update) {
    
    // O Trigger.new é uma lista com todos os tickets que estão sendo salvos naquele exato segundo
    for (Ticket__c ticket : Trigger.new) {
        
        // Verifica se o status é 'Resolvido'
        if (ticket.Status__c == 'Resolvido') {
            
            // Verifica se o campo Resolucao__c está vazio ou nulo
            if (String.isBlank(ticket.Resolucao__c)) {
                
                // Dispara o erro na tela, impedindo o banco de dados de salvar
                ticket.Resolucao__c.addError('Operação bloqueada: Você não pode fechar um ticket sem documentar a resolução!');
                
            }
        }
    }
}