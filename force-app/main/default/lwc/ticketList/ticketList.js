import { LightningElement, wire } from 'lwc';
// Importando aquele nosso garçom (o método do Apex)
import getOpenTickets from '@salesforce/apex/TicketController.getOpenTickets';

export default class TicketList extends LightningElement {
    tickets;
    error;

    // O @wire é a mágica que fica escutando o banco de dados em tempo real
    @wire(getOpenTickets)
    wiredTickets({ error, data }) {
        if (data) {
            this.tickets = data;
            this.error = undefined;
        } else if (error) {
            this.error = error;
            this.tickets = undefined;
        }
    }
}