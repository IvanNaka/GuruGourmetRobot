*** Settings ***
Documentation    Essa suíte testa as funcionalidades relacionados a edição de uma receita
Resource         ../pages/resource.robot
Resource         ../../pages/login.robot
Resource         ../../pages/cadastro_receita.robot
Resource         ../../pages/deletar-receita.robot
Resource         ../../pages/home-page.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de Teste 24 - Usuário criador da receita
	[Documentation]    Esse teste verifica a edição de uma receita com o usuário criador dela
	Acessar a home page
    Sleep    3s
    Realizar login
    Cadastrar receita
    Acessar receita
    Editar receita


Caso de Teste 26 - Usuário qualquer
	[Documentation]    Esse teste verifica a edição de uma receita com um usuário qualquer
	Acessar a home page

