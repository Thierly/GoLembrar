Feature: Excluir lembrete
   
    Deleta um lembrete criado

Scenario: Excluir um lembrete.
Given O usuário está logado
And Clica em um lembrete
And Clica no ícone de exclusão de lembrete
When Clica em "Confirmar"
Then O lembrete é excluido 

Scenario: Cancelar a exclusão de um lembrete.
Given O usuário está logado
And Clica em um lembrete
And Clica no ícone de exclusão de lembrete
When Clica em "Fechar"
Then O lembrete não é excluido


