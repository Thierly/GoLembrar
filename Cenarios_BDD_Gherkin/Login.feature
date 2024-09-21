Feature: Login
    Realizar login na plataforma

Scenario: Realizar login com entradas válidas. 

    Given O usuário está na página de login 
    And Ele insere entradas válidas no campo "Email"
    And Ele insere entradas válidas no campo "Senha"
    When Clica no botão "Entrar" 
    Then O login é realizado com sucesso

Scenario: Validar mensagem de erro de login com email inválido.
    
    Given O usuário está na página de login
    And Ele insere uma entrada inválida no campo "Email"
    And Ele insere uma entrada no campo "Senha"
    When Clica no botão "Entrar"
    Then A página apresenta mensagem de erro de credenciais

Scenario: Validar mensagem de erro de senha inválida.
   
    Given O usuário está na página de login
    And Ele insere uma entrada válida no campo "Email"
    And Ele insere uma entrada inválida no campo "Senha"
    When Clica no botão "Entrar"
    Then A página apresenta mensagem de erro de credenciais

Scenario: Validar mensagem de erro de email e senha inválidos.  
    
    Given O usuário está na página de login
    And Ele insere entradas inválidas nos campos "Email" e "Senha"
    When Clica no botão "Entrar"
    Then A página apresenta mensagem de erro de credenciais

Scenario: Validar botão 'Entrar' ao tentar fazer login sem inserir email.
    
    Given O usuário está na página de login
    And Ele insere entradas apenas no campo "Senha"
    When Clica no botão "Entrar"
    Then Não é possível clicar no botão "Entrar"

Scenario: Validar botão 'Entrar' ao tentar fazer login sem inserir senha.

    Given O usuário está na página de login
    And Ele insere entradas apenas no campo "Email"
    When Clica no botão "Entrar"
    Then Não é possível clicar no botão "Entrar"

Scenario: Validar botão 'Entrar' ao tentar fazer login sem inserir email e senha.

    Given O usuário está na página de login
    And Ele deixa os campos vázios
    When Clica no botão "Entrar"
    Then Não é possível clicar no botão "Entrar"