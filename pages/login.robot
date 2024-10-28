*** Settings ***
Library	    SeleniumLibrary
Resource    ../pages/resource.robot

*** Variables ***
${emailLogin}      casosdeteste@email.com
${senhaLogin}      Senha123!

*** Keywords ***
Realizar login
    Click Link        id=login-button
    Input Text        id=email        ${emailLogin}
    Input Text        id=password     ${senhaLogin}
    Click Button      id=botao-login