*** Settings ***
Documentation    Essa suíte testa as funcionalidades relacionados a deleção de uma receita
Resource         ../../pages/resource.robot
Resource         ../../pages/cadastro_usuario.robot
Resource         ../../pages/receita.robot
Resource         ../../pages/home-page.robot

Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de Teste 32 - Usuário criador da receita
	[Documentation]    Esse teste verifica a deletação da informação da receita
	Acessar a home page
    Sleep    2s
    Acessar o registrar
    Realizar login
    Sleep    2s
    Criar receita
    deletar Informações da receita
