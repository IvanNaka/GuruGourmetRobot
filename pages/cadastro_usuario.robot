*** Settings ***
Library	    SeleniumLibrary
Resource    ../pages/resource.robot

*** Variables ***
${URL}    http://localhost:8000/
${emailUsuarioInvalido}      casosdeteste
${senhaUsuario}      Senha123!
${nomeUsuario}    toby4
${emailUsuario}      toby4@gmail.com


*** Keywords ***
Realizar login email invalido
    input Text        id=username    ${nomeUsuario}
    Input Text        id=email        ${emailUsuarioInvalido}
    Input Text        id=password     ${senhaUsuario}
    Click Element    xpath=//button[@onclick="cadastro()"]
Realizar login
    input Text        id=username    ${nomeUsuario}
    Input Text        id=email        ${emailUsuario}
    Input Text        id=password     ${senhaUsuario}
    Click Element    xpath=//button[@onclick="cadastro()"]