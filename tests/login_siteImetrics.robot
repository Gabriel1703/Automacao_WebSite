***Settings***
Documentation   Teste da página login da Inmetrics

Resource    ../resources/base.robot

#Gancho para tirar screenshot após cada execução do teste
Test Teardown   Take Screenshot

***Test Cases***
Login com sucesso
    [tags]              smoke
    Open Login Page
    Login With        ${INPUT_USERNAME}     ${INPUT_PASSWORD}
    Logout Link Should Be visible


