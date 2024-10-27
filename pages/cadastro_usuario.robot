*** Settings ***
LibrarySeleniumLibrary

*** Variables ***
${BROWSER}chrome 
${URL}http://localhost:8000/
${NOME}     Camila
${SENHA}    Teste123!
${SENHAE}   Testeabc
${EMAIL}    roboto@verival.com
${EMAILE}   teste@email


*** Keywords ***
Abrir o navegador
    Open Browserbrowser=${BROWSER}
Maximize Browser Window

Fechar o navegador
Capture Page Screenshot
Close Browser

Acessar a pagina home do site
    Go Tourl=${URL}

Digitar no campo nome o nome do usuario
    Input Textxpath=//*[@id="nome"]        ${NOME}

Digitar no campo email o email do usuario
    Input Textxpath=//*[@id="email"]        ${EMAIL}

Digitar no campo email o email do usuario errado
    Input Textxpath=//*[@id="email"]        ${EMAILE}

Digitar no campo senha a senha do usuário
    Input Textxpath=//*[@id="password"]         ${SENHA}

Digitar no campo senha a senha do usuário errada
    Input Textxpath=//*[@id="password"]         ${SENHAE}

Acessar pagina de login
    Click Element    xpath=//*[@id="login-button"]

Acionar o botão cadastro
    Click Element    xpath=//html/body/nav/div/div[2]/div/a
Sleep    3


