*** Settings ***
Library	    SeleniumLibrary
Resource    ../pages/resource.robot

*** Variables ***
${emailUsuario}      casosdeteste@email.com	
${senhaUsuario}      Senha123!

*** Keywords ***
Realizar login
    Click Link        id=login-button
    Input Text        id=email        ${emailUsuario}
    Input Text        id=password     ${senhaUsuario}
    Click Button      id=botao-login
