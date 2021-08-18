***Settings***
Documentation   Ações da funcionalidade de autorização/autenticação


***Variables***
${LOGOUT_LINK}         css=a[href*=logout]     


***Keywords***
Open Login Page

    New Browser         ${browser}     ${false}
    New Page            http://parodify.herokuapp.com/users/sign_in 

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

Logout Link Should Be visible
    Wait For Elements State   ${LOGOUT_LINK}   visible    10

Do Logout
    Click                     ${LOGOUT_LINK}  

Alert Should Be         
    [Arguments]         ${expect_arg}

    Get Text            .is-danger .message-body    ==    ${expect_arg}

