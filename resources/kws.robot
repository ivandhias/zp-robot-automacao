***Settings***

Library     SeleniumLibrary




***Keywords***
Acesso a página Login
    Go To    http://zepalheta-web:3000
    #Maximize Browser Window

Submeto minhas credenciais
    [Arguments]     ${email}     ${password}

    Input Text      id:txtEmail                     ${email}
    Input Text      css:input[placeholder=Senha]    ${password}
    Click Element   //button[text()='Entrar']  

Devo ver a área logada
    Wait Until Page Contains      Aluguéis     5 

Devo ver um toaster com a mensagem
    [Arguments]     ${expect_message}

    Wait Until Element Contains     xpath://*[@id="root"]/div[2]/div/div/p    ${expect_message}
