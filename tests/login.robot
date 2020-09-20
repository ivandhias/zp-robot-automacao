***Settings***
Documentation   Login

Resource        ..//resources/kws.robot



# Comportamento (Dado, Quando e Então)
# BDD só é BDD se o desenvolvedor ler a especificação e desenvolver
# orientado ala

# ATDD (Desenvolvimento guiado por teste de aceitação)
# ATDD só é ATDD se o desenvolvedor ler a especificação e desenvolver
# orientado a ela

***Test Cases***
#Staps
Login do Administrador
    Acesso a página Login
    Submeto minhas credenciais  admin@zepalheta.com.br  pwd123
    Devo ver a área logada

 #Cenário com fluxo alternativo
Senha incorreta
    [tags]      inv_login
    Acesso a página Login
    Submeto minhas credenciais  admin@zepalheta.com.br  abc123
    Devo ver um toaster com a mensagem  Ocorreu um erro ao fazer login, cheque as credenciais.

Senha em branco
    [tags]      inv_login
    Acesso a página Login
    Submeto minhas credenciais  carlos@gmail.com  ${EMPTY}
    Devo ver um toaster com a mensagem  O campo senha é obrigatório!

Email em branco
    [tags]      inv_login
    Acesso a página Login
    Submeto minhas credenciais    ${EMPTY}  123456
    Devo ver um toaster com a mensagem  O campo email é obrigatório!

Senha e Email em branco
    [tags]      inv_login
    Acesso a página Login
    Submeto minhas credenciais    ${EMPTY}  ${EMPTY}  
    Devo ver um toaster com a mensagem  Os campos email e senha não foram preenchidos!    

                  