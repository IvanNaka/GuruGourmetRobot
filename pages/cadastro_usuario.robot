*** Settings ***
Library	    SeleniumLibrary
Resource    ../pages/resource.robot

*** Variables ***
${BROWSER}    chrome 
${URL}    http://localhost:8000/
${NOME}     Camila
${SENHA}    Teste123!
${SENHAE}   Testeabc
${EMAIL}    roboto@verival.com
${EMAILE}   teste@email
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
    Click Element    xpath=//button[@onclick="cadastro()"]*** Settings ***

Abrir o navegador
    Open Browser    browser=${BROWSER}
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a pagina home do site
    Go To    url=${URL}

Digitar no campo nome o nome do usuario
    Input Text    xpath=//*[@id="username"]        ${NOME}

Digitar no campo email o email do usuario
    Input Text    xpath=//*[@id="email"]        ${EMAIL}

Digitar no campo email o email do usuario errado
    Input Text    xpath=//*[@id="email"]        ${EMAILE}

Digitar no campo senha a senha do usuário
    Input Text    xpath=//*[@id="password"]         ${SENHA}

Digitar no campo senha a senha do usuário errada
    Input Text    xpath=//*[@id="password"]         ${SENHAE}

Acessar pagina de login
    Click Element    xpath=//*[@id="login-button"]

Acionar o botão cadastro
    Click Element    xpath=//html/body/nav/div/div[2]/div/a
    Sleep    3
Acessar pagina de cadastro
    Click Element    xpath=/html/body/nav/div/div[2]/div/a



