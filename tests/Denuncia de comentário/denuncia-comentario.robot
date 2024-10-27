*** Settings ***
Documentation    Essa suíte testa as funcionalidades relacionados a denúncia de comentários
Resource         ../pages/resource.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de Teste 01 - Denúncia justificada
	[Documentation]    Esse teste verifica a denúncia de um comentário justificada
	Acessar a home page
    
