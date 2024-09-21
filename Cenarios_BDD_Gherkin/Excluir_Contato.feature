Feature: Excluir contato
   
    Deleta um contato

Scenario: Excluir um contato.
    Given O usuário está logado
    And Clica em "Meus Contatos"
    And Clica no ícone de editar contato
    And Clica em "Apagar"
    When Clica em "Confirmar"
    Then O contato é excluído

Scenario: Cancelar exclusão de contato.
    Given O usuário está logado
    And Clica em "Meus Contatos"
    And Clica no ícone de editar contato
    And Clica em "Apagar"
    When Clica em "Fechar"
    Then O usuário retorna a página de edição de contato

Scenario: Excluir um contato vinculado a um lembrete.
    Given O usuário está logado
    And O usuário tem um lembrete criado
    And Clica em "Meus Contatos"
    And Seleciona o contato vinculado ao lembrete criado
    And Clica no ícone de editar contato
    And Clica em "Apagar"
    When Clica em "Confirmar"
    Then O sistema exibe mensagem de erro, o contato não pode ser excluído

