*** Settings ***
Library	    SeleniumLibrary
Resource    ../pages/resource.robot

*** Variables ***
${emailUsuario}      casosdeteste@email.com	
${senhaUsuario}      Senha123!

*** Keywords ***
Digitar no campo email o email do usuario
	Input Text	xpath=//*[@id="email"]        ${EMAIL}

Digitar no campo senha a senha do usuário
	Input Text	xpath=//*[@id="password"]         ${SENHA}

Acessar pagina de login
    Click Element    xpath=//*[@id="login-button"]
Acionar o botão login
    Click Element    xpath=//*[@id="botao-login"]
	Sleep    3
