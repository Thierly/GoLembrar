Feature: Novo contato
    Criar um novo contato

Scenario: Criar um novo contato.

    Given O usuário está logado 
    And Clica em "Meus contatos"
    And Clica em "Novo contato"
    And Seleciona "Email" no campo "Canal"
    And Preenche os campos "Nome" e "Indentificador" com entradas válidas
    When Clica no botão "Salvar"
    Then Um novo contato é criado

Scenario: Validar o campo "Nome" ao inserir uma entrada com mais de 100 caracteres.

    Given O usuário está logado 
    And Clica em "Meus contatos"
    And Clica em "Novo contato"
    When No campo "Nome" insere 101 caracteres 
    Then O campo não aceita mais de 100 caracteres

Scenario: Validar o campo "Nome" ao inserir uma entrada com menos de 3 caracteres.

    Given O usuário está logado 
    And Clica em "Meus contatos"
    And Clica em "Novo contato"
    When No campo "Nome" insere 2 caracteres 
    Then O campo não aceita menos de 3 caracteres

Scenario: Validar o campo "Nome" ao inserir uma entrada com números.

    Given O usuário está logado 
    And Clica em "Meus contatos"
    And Clica em "Novo contato"
    When No campo "Nome" insere números
    Then O campo não aceita números

Scenario: Validar o campo "Nome" ao inserir uma entrada com letras estrangeiras.

    Given O usuário está logado 
    And Clica em "Meus contatos"
    And Clica em "Novo contato"
    When No campo "Nome" insere letras estrangeiras
    Then O campo aceita apenas letras latinas

Scenario: Validar o campo "Nome" ao inserir uma entrada com símbolos.

    Given O usuário está logado 
    And Clica em "Meus contatos"
    And Clica em "Novo contato"
    When No campo "Nome" insere símbolos
    Then O campo aceita

Scenario: Validar o campo "Identificador" ao inserir uma entrada com mais de 100 caracteres.

    Given O usuário está logado 
    And Clica em "Meus contatos"
    And Clica em "Novo contato"
    When No campo "Email" insere 101 caracteres
    Then O campo não aceita mais de 100 caracteres

Scenario: Validar o campo "Identificador" ao inserir uma entrada com menos de 4 caracteres.

    Given O usuário está logado 
    And Clica em "Meus contatos"
    And Clica em "Novo contato"
    When No campo "Email" insere 3 caracteres
    Then O campo não aceita menos de 4 caracteres

Scenario: Validar o campo "Identificador" ao inserir uma entrada com números.

    Given O usuário está logado 
    And Clica em "Meus contatos"
    And Clica em "Novo contato"
    When No campo "Email" insere números
    Then O campo aceita

Scenario: Validar o campo "Identificador" ao inserir uma entrada com letras estrangeiras.

    Given O usuário está logado 
    And Clica em "Meus contatos"
    And Clica em "Novo contato"
    When No campo "Email" letras estrangeiras
    Then O campo aceita apenas letras latinas

Scenario: Validar o campo "Identificador" ao inserir uma entrada com símbolos.

    Given O usuário está logado 
    And Clica em "Meus contatos"
    And Clica em "Novo contato"
    When No campo "Email" insere símbolos
    Then O campo aceita

Scenario: Validar o botão "Salvar" ao criar um contato sem preencher nenhum campo.

    Given O usuário está logado 
    And Clica em "Meus contatos"
    And Clica em "Novo contato"
    And Deixa todos os campos vázios
    When Clica no botão "Salvar"
    Then Não é possível clicar no botão "Salvar"

Scenario: Validar o botão "Salvar" ao criar um contato sem preencher o campo nome.

    Given O usuário está logado 
    And Clica em "Meus contatos"
    And Clica em "Novo contato"
    And No campo "Canal" seleciona "Email"
    And Preenche o campo "Identificador" com entradas válidas
    And Deixa o campo "Nome" vázio
    When Clica no botão "Salvar"
    Then Não é possível clicar no botão "Salvar"

Scenario: Validar o botão "Salvar" ao criar um contato sem preencher o campo "Identificador".

    Given O usuário está logado 
    And Clica em "Meus contatos"
    And Clica em "Novo contato"
    And Preenche o campo "Nome" com entradas válidas
    And Deixa o campo "Identificador" vázio
    When Clica no botão "Salvar"
    Then Não é possível clicar no botão "Salvar"

Scenario: Validar o campo "Identificador" ao inserir uma entrada sem estrutura de Email.

    Given O usuário está logado 
    And Clica em "Meus contatos"
    And Clica em "Novo contato"
    When No campo "Email" insere uma entrada inválida
    Then O campo não aceita