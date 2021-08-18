***Settings***
Documentation   Testando o cadastro de um usuario

Resource    ../resources/base.robot



#Gancho para tirar screenshot após cada execução do teste
Test Teardown   Take Screenshot

***Test Cases***
Cadastrar um novo usuario no webSite Inmetrics
   Open Login Page
   Click               xpath=//a[text()="Cadastre-se"]
   ${NOME}             FakerLibrary.name
   Cadastre_se With    ${NOME}   ${CAD_PASS}    ${CAD_CONFIRMPASS}




