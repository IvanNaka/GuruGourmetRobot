*** Settings ***
Documentation    Essa suíte testa as funcionalidades relacionados ao cadastro de usuários no site
Resource         ../pages/commom/resource.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de Teste 12 - Informações corretas
	[Documentation]    Esse teste verifica a denúncia de um comentário justificada
	Acessar a home page

Caso de Teste 13 - Informações incompletas
	[Documentation]    Esse teste verifica a denúncia de um comentário justificada
	Acessar a home page

Caso de Teste 14 - Email inválido
	[Documentation]    Esse teste verifica a denúncia de um comentário justificada
	Acessar a home page
Caso de Teste 15 - Usuário inválido
	[Documentation]    Esse teste verifica a denúncia de um comentário justificada
	Acessar a home page
Caso de Teste 16 - Senha inválida
	[Documentation]    Esse teste verifica a denúncia de um comentário justificada
	Acessar a home page
