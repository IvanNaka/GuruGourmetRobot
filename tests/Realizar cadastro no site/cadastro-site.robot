*** Settings ***
Library    SeleniumLibrary
Documentation    Essa suíte testa as funcionalidades relacionadas ao cadastro de usuários no site
Resource     ../pages/common/resource.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Variables ***
${URL}                         file:///C:/Users/User/Desktop/register.html
${EMAIL_INVALIDO}              email@invalido.com
${USUARIO_INVALIDO}            usuario@invalido
${SENHA_INVALIDA}              SenhaErrada123
${MENSAGEM_ERRO_LOGIN}         Credenciais inválidas, tente novamente.
${CAMPO_EMAIL}                 //input[@id='email']  
${CAMPO_USUARIO}               //input[@id='usuario']  
${CAMPO_SENHA}                 //input[@id='senha']  
${BOTAO_LOGIN}                 //button[@id='login']  
${MENSAGEM_SUCESSO_LOGIN}      //div[@class='sucesso']  

*** Test Cases ***

Caso de Teste 12 - Informações corretas
    [Documentation]    Esse teste verifica o login com informações corretas.
    Acessar a home page
    Preencher formulario de login    usuarioValido    emailValido    senhaValida
    Enviar formulario de login
    Verificar login bem-sucedido

Caso de Teste 13 - Informações incompletas
    [Documentation]    Esse teste verifica o login com informações incompletas.
    Acessar a home page
    Preencher formulario de login    ${EMAIL_INVALIDO}    ${USUARIO_INVALIDO}    ${SENHA_INVALIDA}
    Enviar formulario de login
    Verificar mensagem de erro de informações incompletas

Caso de Teste 14 - Email inválido
    [Documentation]    Esse teste verifica o login com um email inválido.
    Acessar a home page
    Preencher formulario de login    ${EMAIL_INVALIDO}    usuarioValido    senhaValida
    Enviar formulario de login
    Verificar mensagem de erro de email inválido

Caso de Teste 15 - Usuário inválido
    [Documentation]    Esse teste verifica o login com um usuário inválido.
    Acessar a home page
    Preencher formulario de login    emailValido    ${USUARIO_INVALIDO}    senhaValida
    Enviar formulario de login
    Verificar mensagem de erro de usuário inválido

Caso de Teste 16 - Senha inválida
    [Documentation]    Esse teste verifica o login com uma senha inválida.
    Acessar a home page
    Preencher formulario de login    emailValido    usuarioValido    ${SENHA_INVALIDA}
    Enviar formulario de login
    Verificar mensagem de erro de senha inválida

*** Keywords ***

Abrir o navegador
    Open Browser    ${URL}    chrome
    Maximize Browser Window

Fechar o navegador
    Close Browser

Acessar a home page
    Abrir o navegador

Preencher formulario de login
    [Arguments]    ${email}    ${usuario}    ${senha}
    Input Text    ${CAMPO_EMAIL}    ${email}
    Input Text    ${CAMPO_USUARIO}    ${usuario}
    Input Text    ${CAMPO_SENHA}    ${senha}

Enviar formulario de login
    Click Button    ${BOTAO_LOGIN}  

Verificar mensagem de erro de informações incompletas
    Element Should Be Visible    ${MENSAGEM_ERRO_LOGIN}  

Verificar mensagem de erro de email inválido
    Element Should Be Visible    ${MENSAGEM_ERRO_LOGIN}

Verificar mensagem de erro de usuário inválido
    Element Should Be Visible    ${MENSAGEM_ERRO_LOGIN}

Verificar mensagem de erro de senha inválida
    Element Should Be Visible    ${MENSAGEM_ERRO_LOGIN}

Verificar login bem-sucedido
    # Aqui você deve verificar se o login foi bem-sucedido
    Element Should Be Visible    ${MENSAGEM_SUCESSO_LOGIN}  
