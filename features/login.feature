@foo
Feature: Login

  Background: Página principal
    Given que eu acesso a página principal

  Scenario: Usuário deve ser autorizado
    When eu faço login com "diego.silva" e "abacoaba"
    Then devo ser autenticado com sucesso
    When devo ter acesso a página inicial
    Then Snapshot

# Esquema do Cenario: Tentativa de acesso
#     Quando eu faço login com "<usuario>" e "<senha>"
#     Então devo ver a seguinte mensagem "<alerta>"

#     Exemplos:
#         |usuario        |senha      |alerta                         |
#         |admin_geral    |123456     |Senha inválida.                |
#         |diego          |abacoaba   |Usuário não cadastrado.        |
#         |               |123456     |O campo login é obrigatório.   |
#         |admin_geral    |           |O campo senha é obrigatório.   |





# @foo
# Feature: Playwright multi docs


#   Background: Navigation
#     Given Go to the playwright website

#   Scenario Outline: Changing theme to required mode
#     When Change theme to "<ThemeOne>" mode
#     Then Snapshot "<ThemeOne>"
#     When Change theme to "<ThemeTwo>" mode
#     Then Snapshot "<ThemeTwo>"

#     Examples:
#       | ThemeOne | ThemeTwo |
#       | light    | dark     |
#       | dark     | light    |