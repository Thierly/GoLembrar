Feature: Criar Lembrete

    Criar um novo lembrete

Scenario: Agendar um novo lembrete.

    Given O usuário está logado 
    And Clica em "Novo Lembrete"
    And Insere entradas válidas nos campos "Título" e "Mensagem"
    And Seleciona "Destinatários", e uma data e hora no campo "Agendamento"
    When Clica no botão "Salvar"
    Then O lembrete é criado

Scenario: Agendar um lembrete para mais de um contato.

    Given O usuário está logado
    And Clica em "Novo Lembrete"
    And Insere entradas válidas nos campos "Título" e "Mensagem"
    And Seleciona mais de um contato nos "Destinatários", e uma data e hora no campo "Agendamento"
    When Clica no botão "Salvar"
    Then O lembrete é criado

Scenario: Validar botão "Salvar" ao tentar agendar um lembrete sem inserir entradas no campo "Título".

    Given O usuário está logado
    And Clica em "Novo Lembrete"
    And Insere entradas válidas no campo "Mensagem"
    And Seleciona contato em "Destinatários", e uma data e hora no campo "Agendamento"
    When Clica no botão "Salvar"
    Then Não é possível clicar no botão "Salvar" e o campo "Título" fica vermelho

Scenario: Validar botão "Salvar" ao tentar agendar um lembrete sem inserir entradas no campo "Mensagem".

    Given O usuário está logado
    And Clica em "Novo Lembrete"
    And Insere entradas válidas no campo "Título"
    And Seleciona contato em "Destinatários", e uma data e hora no campo "Agendamento"
    When Clica no botão "Salvar"
    Then Não é possível clicar no botão "Salvar" e o campo "Mensagem" fica vermelho

Scenario: Validar botão "Salvar" ao tentar agendar um lembrete sem selecionar contatos no campo "Destinatários".

    Given O usuário está logado
    And Clica em "Novo Lembrete"
    And Insere entradas válidas nos campos "Título" e "Mensagem"
    And Seleciona  uma data e hora no campo "Agendamento"
    When Clica no botão "Salvar"
    Then Não é possível clicar no botão "Salvar" e o campo "Destinatários" fica vermelho

Scenario: Validar botão "Salvar" ao tentar agendar um lembrete sem selecionar data e hora no campo "Agendamento".

    Given O usuário está logado
    And Clica em "Novo Lembrete"
    And Insere entradas válidas nos campos "Título" e "Mensagem"
    And Selecione um contato no campo "Destinatários"
    When Clica no botão "Salvar"
    Then Não é possível clicar no botão "Salvar" e o campo "Agendamento" fica vermelho

Scenario: Validar botão "Salvar" ao tentar agendar um lembrete deixando todos os campos vázios.

    Given O usuário está logado
    And Clica em "Novo Lembrete"
    And Deixa todos os campos vázios
    When Clica no botão "Salvar"
    Then Não é possível clicar no botão "Salvar" 

Scenario: Validar o campo "Agendamento" ao tentar agendar um lembrete selecionando uma data e hora no passado.

    Given O usuário está logado
    And Clica em "Novo Lembrete"
    When No campo "Agendamento" tenta selecionar uma data e hora já ultrapassados
    Then Não é possível selecionar uma data já passada

Scenario: Validar o campo "Agendamento" ao tentar agendar um lembrete com uma data válida mas a hora inválida.

    Given O usuário está logado
    And Clica em "Novo Lembrete"
    When No campo "Agendamento" seleciona a data atual e a hora atual
    Then Não é possível selecionar uma hora antes de trinta minutos no futuro

Scenario: Validar o campo "Título" ao inserir uma entrada com mais de 120 caracteres.

    Given O usuário está logado 
    And Clica em "Novo Lembrete"
    When No campo "Título" é inserido mais de 120 caracteres
    Then O campo não aceita mais de 120 caracteres

Scenario: Validar o campo "Título" ao inserir uma entrada com menos de 2 caracteres.

    Given O usuário está logado 
    And Clica em "Novo Lembrete"
    When No campo "Título" é inserido apenas 1 caracter
    Then O campo não aceita menos de 2 caracteres  

Scenario: Validar o campo "Título" ao inserir uma entrada com letras estrangeiras.

    Given O usuário está logado 
    And Clica em "Novo Lembrete"
    When No campo "Título" é inserido letras estrangeiras
    Then O campo aceita apenas letras latinas

Scenario: Validar o campo "Título" ao inserir apenas números.

    Given O usuário está logado 
    And Clica em "Novo Lembrete"
    When No campo "Título" é inserido apenas números
    Then O campo aceita 

Scenario: Validar o campo "Título" ao inserir uma entrada com símbolos.

    Given O usuário está logado 
    And Clica em "Novo Lembrete"
    When No campo "Título" é inserido apenas símbolos
    Then O campo aceita

Scenario: Validar o campo "Mensagem" ao inserir uma entrada com mais de 500 caracteres.

    Given O usuário está logado 
    And Clica em "Novo Lembrete"
    When No campo "Mensagem" é inserido 501 caracteres
    Then O campo não aceita mais de 500 caracteres   

Scenario: Validar o campo "Mensagem" ao inserir uma entrada com menos de 2 caracteres.

    Given O usuário está logado 
    And Clica em "Novo Lembrete"
    When No campo "Mensagem" é inserido 1 caracteres
    Then O campo não aceita menos de 2 caracteres

Scenario: Validar o campo "Mensagem" ao inserir somente números.

    Given O usuário está logado 
    And Clica em "Novo Lembrete"
    When No campo "Mensagem" é inserido apenas números
    Then O campo aceita

Scenario: Validar o campo "Mensagem" ao inserir letras estrangeiras.

    Given O usuário está logado 
    And Clica em "Novo Lembrete"
    When No campo "Mensagem" é inserido letras estrangeiras
    Then O campo não aceita letras estrangeiras

Scenario: Validar o campo "Mensagem" ao inserir símbolos.

    Given O usuário está logado 
    And Clica em "Novo Lembrete"
    When No campo "Mensagem" é inserido apenas símbolos
    Then O campo aceita





