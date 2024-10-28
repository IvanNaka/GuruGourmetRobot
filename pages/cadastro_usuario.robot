*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome 
${URL}    http://localhost:8000/
${NOME}     Camila
${SENHA}    Teste123!
${SENHAE}   Testeabc
${EMAIL}    robopto@verival.com
${EMAILE}   testeemail


*** Keywords ***
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

Acionar o botão cadastro
    Click Element    xpath=/html/body/main/header/div/div/button
    Sleep    2

Acessar pagina de cadastro
    Click Element    xpath=/html/body/nav/div/div[2]/div/a

Verificar resultado
    Page Should Contain    ${NOME}

Verificar resultado errado
    Page Should Contain    Endereço de e-mail inválido


