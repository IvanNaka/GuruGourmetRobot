*** Settings ***
Documentation   
Library          SeleniumLibrary
Resource         ../../pages/resource.robot
Resource         ../../pages/login.robot
Resource         ../../pages/home-page.robot
Resource         ../../pages/receita.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***
Caso de Teste 09 - Adicionar Comentário em Receita
    [Documentation]   
    Acessar a home page
    Realizar login
    Sleep    3s
    Acessar a home page
    Acessar Receita
    Sleep    3s
    Escrever comentário    Comentário de Teste pro vídeo.
    Verificar comentário adicionado    Comentário de Teste pro vídeo.

Caso de Teste 10 - Tentar Adicionar Comentário Vazio
    [Documentation]  
    Acessar a home page
    Realizar login
    Sleep    3s
    Acessar a home page
    Acessar Receita
    Sleep    3s
    Tentar enviar comentário vazio
    Verificar mensagem de erro

    
