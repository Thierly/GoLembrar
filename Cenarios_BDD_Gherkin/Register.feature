Feature: Registrar uma conta
    Registrar uma conta na plataforma

Scenario: Registrar uma conta.

    Given O usuário está na página de formulário de registro
    And Preenche os campos "Nome" e "Email" com entradas válidas
    And Insere entradas válidas nos campos "Senha" e "Confirmar senha"
    When Clica no botão "Criar conta"
    Then O cadastro é realizado com sucesso

Scenario: Validar mensagem de erro ao tentar registrar uma conta já registrada.
    
    Given O usuário está na página de formulário de registro
    And Preenche os campos "Nome" e "Email" com informações já registradas
    And Insere entradas válidas nos campos "Senha" e "Confirmar senha"
    When Clica no botão "Criar conta"
    Then A página exibe mensagem de erro

Scenario: Validar o botão "Criar conta" ao tentar registrar uma conta sem inserir entradas no campo "Nome".
    
    Given O usuário está na página de formulário de registro
    And Deixa o campo "Nome" vázio 
    And Insere entradas nos campos "Email", "Senha" e "Confirmar senha"
    When Clica no botão "Criar conta"
    Then Não é possível clicar no botão "Criar conta"

Scenario: Validar o botão "Criar conta" ao tentar registrar uma conta sem inserir entradas no campo "Email".
    
    Given O usuário está na página de formulário de registro
    And Deixa o campo "Email" vázio 
    And Insere entradas nos campos "Nome", "Senha" e "Confirmar senha"
    When Clica no botão "Criar conta"
    Then Não é possível clicar no botão "Criar conta"

Scenario: Validar o botão "Criar conta" ao tentar registrar uma conta sem inserir entradas no campo "Senha".
    
    Given O usuário está na página de formulário de registro
    And Deixa o campo "Senha" vázio 
    And Insere entradas nos campos "Nome", "Email"
    When Clica no botão "Criar conta"
    Then Não é possível clicar no botão "Criar conta"

Scenario: Validar o botão "Criar conta" ao tentar registrar uma conta com entrada inválida no campo "Confirmar senha".

    Given O usuário está na página de formulário de registro
    And Insere entradas nos campos "Nome", "Email" e "Senha"
    And Insere uma entrada diferente do campo "Senha" no campo "Confirmar senha"
    When Clica no botão "Criar conta"
    Then Não é possível clicar no botão "Criar conta"

Scenario: Validar o botão "Criar conta" ao tentar registrar uma conta sem inserir nenhuma entrada.

    Given O usuário está na página de formulário de registro
    And Deixa todos os campos vázios
    When Clica no botão "Criar conta"
    Then Não é possível clicar no botão "Criar conta"

Scenario: Validar o botão "Criar conta" ao tentar registrar uma conta inserindo um "Nome" inválido.

    Given O usuário está na página de formulário de registro
    And Insere uma entrada inválida no campo "Nome" 
    And Preenche os campos "Email", "Senha" e "Confirmar senha" com entradas válidas
    When Clica no botão "Criar conta"
    Then Não é possível clicar no botão criar conta e o campo "Nome" fica vermelho.

Scenario: Validar o botão "Criar conta" ao tentar registrar uma conta inserindo um "Email" inválido.

    Given O usuário está na página de formulário de registro
    And Insere uma entrada inválida no campo "Email" 
    And Preenche os campos "Nome", "Senha" e "Confirmar senha" com entradas válidas
    When Clica no botão "Criar conta"
    Then Não é possível clicar no botão criar conta e o campo "Email" fica vermelho.

Scenario: Validar o botão "Criar conta" ao tentar registrar uma conta inserindo uma "Senha" inválida.

    Given O usuário está na página de formulário de registro
    And Insere uma entrada inválida no campo "Senha"
    And Insere uma entrada igual ao campo "Senha" no campo "Confirmar senha" 
    And Preenche os campos "Email", "Nome" com entradas válidas
    When Clica no botão "Criar conta"
    Then Não é possível clicar no botão criar conta e os campo "Senha" fica vermelho.


