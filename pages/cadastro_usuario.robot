*** Settings ***
Library	    SeleniumLibrary
Resource    ../pages/resource.robot

*** Variables ***
${emailUsuarioInvalido}      casosdeteste
${senhaInvalida}             senhafraca
${usuarioInvalido}           casosdeteste
${senhaUsuario}      Senha123!
${nomeUsuario}       testeFuncionando
${emailUsuario}      testefuncionando@gmail.com

*** Keywords ***
Realizar cadastro email invalido
    input Text        id=username     ${nomeUsuario}
    Input Text        id=email        ${emailUsuarioInvalido}
    Input Text        id=password     ${senhaUsuario}
    Click Element    xpath=//button[@onclick="cadastro()"]
Realizar cadastro Usuario invalido
    input Text        id=username     ${usuarioInvalido}
    Input Text        id=email        ${emailUsuario}
    Input Text        id=password     ${senhaUsuario}
    Click Element    xpath=//button[@onclick="cadastro()"]
Realizar cadastro Senha invalida
    input Text        id=username    ${nomeUsuario}
    Input Text        id=email        ${emailUsuario}
    Input Text        id=password     ${senhaInvalida}
    Click Element    xpath=//button[@onclick="cadastro()"]


Realizar cadastro
    input Text        id=username    ${nomeUsuario}
    Input Text        id=email        ${emailUsuario}
    Input Text        id=password     ${senhaUsuario}
    Click Element    xpath=//button[@onclick="cadastro()"]*** Settings ***


Acessar a pagina home do site
    Go To    url=${URL}

Digitar no campo nome o nome do usuario
    Input Text    xpath=//*[@id="username"]        ${nomeUsuario}

Digitar no campo email o email do usuario
    Input Text    xpath=//*[@id="email"]        ${emailUsuario}

Digitar no campo email o email do usuario errado
    Input Text    xpath=//*[@id="email"]        ${emailUsuarioInvalido}

Digitar no campo senha a senha do usuário
    Input Text    xpath=//*[@id="password"]         ${senhaUsuario}

Digitar no campo senha a senha do usuário errada
    Input Text    xpath=//*[@id="password"]         ${senhaInvalida}

Acionar o botão cadastro
    Click Element    xpath=/html/body/main/header/div/div/button
    Sleep    2

Acessar pagina de cadastro
    Click Element    xpath=/html/body/nav/div/div[2]/div/a

Verificar resultado
    Page Should Contain    ${nomeUsuario}

Verificar resultado errado
    Page Should Contain    Endereço de e-mail inválido

Verificar usuario errado
    Sleep    3s
    Page Should Contain    Usuario ou email já utilizados!

Verificar senha errado
    Page Should Contain    A senha deve conter pelo menos 8 caracteres, uma letra maiúscula, uma letra minúscula, um número e um caractere especial
