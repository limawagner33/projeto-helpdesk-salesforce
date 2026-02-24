# ☁️ Salesforce Helpdesk & Ticketing System

Um sistema completo de gerenciamento de chamados (Helpdesk) construído de ponta a ponta na plataforma Salesforce, aplicando as melhores práticas de Source-Driven Development e arquitetura Full-Stack.
<img width="1918" height="951" alt="Screenshot_1" src="https://github.com/user-attachments/assets/414a0f5a-74d0-435d-a748-8388e4e56c09" />
<img width="1919" height="955" alt="Screenshot_2" src="https://github.com/user-attachments/assets/d8538478-c696-48fd-9955-80e537311775" />

Este projeto foi desenvolvido para solucionar um problema clássico de operações e suporte: garantir a rastreabilidade dos atendimentos, automatizar escalonamentos e fornecer uma interface intuitiva para os analistas, evitando gargalos administrativos.

## 🛠️ Arquitetura e Tecnologias Utilizadas

O projeto engloba todas as camadas de desenvolvimento do ecossistema Salesforce (Declarativo e Programático):

* **Database (Data Modeling):** Criação de Custom Objects (`Ticket__c`), relacionamentos e campos customizados para armazenar o histórico de chamados.
* **Automação (Flow Builder):** Record-Triggered Flows configurados para interceptar e escalar automaticamente tickets marcados como "Urgente", otimizando o SLA de atendimento.
* **Backend (Apex Triggers & Controllers):** * `TicketTrigger`: Lógica de validação em Apex para impedir que analistas fechem chamados sem preencher a resolução, garantindo a integridade dos dados na operação.
    * `TicketController`: Classe Apex com `@AuraEnabled` servindo como ponte segura de dados (SOQL) para o front-end.
* **Frontend (Lightning Web Components - LWC):** Componente customizado (`ticketList`) construído com HTML, CSS e JavaScript moderno para exibir em tempo real os chamados pendentes na página inicial do usuário, melhorando a UX e a produtividade.
* **DevOps:** Versionamento completo de código utilizando Git, GitHub e Salesforce CLI (SFDX).

## 🚀 Como instalar e testar este projeto

Se você é um recrutador ou desenvolvedor e deseja rodar esta estrutura em uma Scratch Org ou Developer Edition, siga os passos abaixo:

1. Clone este repositório:
   ```bash
   git clone [https://github.com/limawagner33/projeto-helpdesk-salesforce.git](https://github.com/limawagner33/projeto-helpdesk-salesforce.git)
2. Autorize sua Org de desenvolvimento:
   ```bash
   sf org login web -a Projeto-Helpdesk
3. Faça o deploy de todo o código e metadados para a sua Org:
   ```bash
   sf project deploy start -o Projeto-Helpdesk
4. Atribua as permissões e adicione o LWC à sua Home Page via Lightning App Builder.

Desenvolvido com foco em engenharia de software e resolução de problemas de negócios por Wagner Lima.
