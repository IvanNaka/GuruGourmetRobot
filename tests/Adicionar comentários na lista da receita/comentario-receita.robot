*** Settings ***
Documentation    Essa suíte testa as funcionalidades relacionados a adição de comentários na lista de receitas
Resource         ../pages/resource.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de Teste 09 - Comentário escrito
	[Documentation]    Esse teste verifica a adição de um comentário que foi escrito
	Acessar a home page

Caso de Teste 10 - Comentário não escrito
	[Documentation]    Esse teste verifica a adição de um comentário que não foi escrito
	Acessar a home page

Caso de Teste 11 - Usuário não logado
	[Documentation]    Esse teste verifica a adição de um comentário com um usuário não logado
	Acessar a home page
