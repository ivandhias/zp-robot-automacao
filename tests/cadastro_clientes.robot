***Settings***
Documentation       Cadastro de Clientes

***Test Cases***
#Preparação
#Ação
#Resultado Esperado

Novo Clientes
    Dado que acesso o formulário de cadastro de Clientes
    Quando faço a inclusão desse cliente:
    ...         Bom Jovi    12312301406     Rua dos Bugs, 1000  11985857458
    Então devo ver a notificação    Cliente cadastrado com sucesso!
                            