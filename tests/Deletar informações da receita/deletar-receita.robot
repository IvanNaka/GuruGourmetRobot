*** Settings ***
Documentation    Essa suíte testa as funcionalidades relacionados a deleção de uma receita
Resource         ../pages/resource.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de Teste 32 - Usuário criador da receita
	[Documentation]    Esse teste verifica a deleção de uma receita com usuário criador dela
	Acessar a home page

