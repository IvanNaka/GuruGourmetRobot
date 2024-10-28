*** Settings ***
Documentation    Essa suíte testa as funcionalidades relacionados ao cadastro de usuários no site

Resource    ../../pages/resource.robot
Resource    ../../pages/cadastro_usuario.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***
CT12 - Realizar Cadastro no Site - Informações corretas
    [Documentation]    Esse teste verifica a realização de um cadastro com informações corretas
    [Tags]             cadastro
    Acessar a pagina home do site
    Acessar pagina de cadastro
    Digitar no campo nome o nome do usuario
    Digitar no campo email o email do usuario
    Digitar no campo senha a senha do usuário
    Acionar o botão cadastro

CT13 - Realizar Cadastro no Site - Informações incorretas
    [Documentation]    Esse teste verifica a realização de um cadastro com informações incorretas
    [Tags]    comentario
    Acessar a pagina home do site
    Acessar pagina de cadastro
    Digitar no campo nome o nome do usuario 
    Digitar no campo email o email do usuario errado
    Digitar no campo senha a senha do usuário errada
    Acionar o botão cadastro

Caso de Teste 14 - Email inválido
	[Documentation]    Esse teste verifica o email invalido no cadastro do usuario
	Acessar a home page
	Acessar o registrar
	Realizar login email invalido

Caso de Teste 15 - Usuário inválido
	[Documentation]    Esse teste verifica a denúncia de um comentário justificada
	Acessar a home page
Caso de Teste 16 - Senha inválida
	[Documentation]    Esse teste verifica a denúncia de um comentário justificada
	Acessar a home page