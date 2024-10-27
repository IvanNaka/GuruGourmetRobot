*** Settings ***
Documentation    Essa suíte testa as funcionalidades relacionados ao cadastro de usuários no site
Resource         ../pages/commom/resource.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***
CT12 - Realizar Cadastro no Site - Informações corretas
    [Documentation]    Esse teste verifica a realização de um cadastro com informações corretas
    [Tags]             cadastro

    Acessar a pagina home do site
    Acessar pagina de cadastro
    Digitar no campo nome o nome do usuario
    Digitar no campo email o email teste@email.com
    Digitar no campo senha a senha Teste123
    Acionar botão cadastrar

CT13 - Realizar Cadastro no Site - Informações incorretas
    [Documentation]    Esse teste verifica a realização de um cadastro com informações incorretas
    [Tags]    comentario

    Acessar a pagina home do site
    Acessar pagina de cadastro
    Digitar no campo nome o nome do usuario 
    Digitar no campo email o email do usuario errado
    Digitar no campo senha a senha do usuario errada
    Acionar botão cadastrar
