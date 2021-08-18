***Settings***
Documentation           Ações da página de login



***Variables***
${INPUT_USERNAME}   Rogerio Céni
${INPUT_PASSWORD}   Rogerio#Ceni 

${NOME}             FakerLibrary.name

${CAD_PASS}         In#metrics
${CAD_CONFIRMPASS}  In#metrics

***Keywords***

Open Login Page

    New Browser         ${browser}     ${false}
    New Page            http://inm-test-app.herokuapp.com/accounts/login/ 

Login With
    [Arguments]         ${name_arg}    ${password_arg}    
    
    Fill Text           css=input[name*=username]  ${name_arg}
    Fill Text           css=input[name*=pass]      ${password_arg}
    Click               xpath=//button[@class="login100-form-btn"]/.. 

Cadastre_se With
    [Arguments]         ${name_args}    ${password_arg}   ${confirmpass_arg}

    Fill Text           css=input[name*=username]     ${name_args}   
    Fill Text           css=input[name*=pass]         ${password_arg}
    Fill Text           css=input[name*=confirmpass]  ${confirmpass_arg}

    Click               xpath=//button[@class="login100-form-btn"]/..


Alert Should Be         
    [Arguments]         ${expect_arg}

    Get Text            .is-danger .message-body    ==    ${expect_arg}

