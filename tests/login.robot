***Settings***
Documentation   Login

Resource        ..//resources/kws.robot
Resource        ..//resources/hooks.robot


#Executa uma ou mais Keywords antes da execução de todos os steps de cada caso de teste
Test Setup          Start Session
# Vai executar uma ou mais Keywords após a execução de todos os steps de cada caso de teste
Test Teardown       Finish Session

***Test Cases***
Login do Administrador
    Acesso a página Login
    Submeto minhas credenciais  admin@zepalheta.com.br  pwd123
    Devo ver a área logada