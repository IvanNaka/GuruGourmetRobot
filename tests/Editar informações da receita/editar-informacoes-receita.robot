*** Settings ***
Documentation    Essa suíte testa as funcionalidades relacionados a edição de uma receita
Resource         ../pages/resource.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de Teste 24 - Usuário criador da receita
	[Documentation]    Esse teste verifica a edição de uma receita com o usuário criador dela
	Acessar a home page

Caso de Teste 26 - Usuário qualquer
	[Documentation]    Esse teste verifica a edição de uma receita com um usuário qualquer
	Acessar a home page

