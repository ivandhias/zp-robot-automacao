***Settings***
Documentation   Login Tentativa

Resource        ..//resources/base.robot

#Executa uma ou mais Keywordssomente uma vez os caso de teste
Suite Setup     Start Session
# Vai executar uma ou mais Keywords uma única vez antes de cada caso de teste
Suite Teardown  Finish Session

Test Template   Tentativa de login
 

**Keywords***
Tentativa de login
    [Arguments]     ${input_email}      ${input_senha}      ${output_mensagem}

    Acesso a página Login
    Submeto minhas credenciais  ${input_email}      ${input_senha}
    Devo ver um toaster com a mensagem  ${output_mensagem}

***Test Cases***
Senha incorreta             admin@zepalheta.com.br      abc123      Ocorreu um erro ao fazer login, cheque as credenciais.    
Senha em branco             carlos@gmail.com            ${EMPTY}    O campo senha é obrigatório!
Email em branco             ${EMPTY}                    123456      O campo email é obrigatório!
Senha e Email em branco     ${EMPTY}                    ${EMPTY}    Os campos email e senha não foram preenchidos! 
Login incorreto             admin&gmail.com             bcd123      Ocorreu um erro ao fazer login, cheque as credenciais.     


