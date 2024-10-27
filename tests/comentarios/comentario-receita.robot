*** Settings ***
Documentation   
Library          SeleniumLibrary
Resource         ../../pages/resource.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Variables ***
${URL_BASE}      http://localhost:8000
${USERNAME}      marinacbraga02@gmail.com
${PASSWORD}      Mar!na11

*** Test Cases ***
Caso de Teste 01 - Adicionar Comentário em Receita
    [Documentation]   
    Fazer login como usuário autenticado
    Acessar página de receita
    Escrever comentário    Comentário de Teste pro vídeo.
    Verificar comentário adicionado    Comentário de Teste pro vídeo.

Caso de Teste 02 - Tentar Adicionar Comentário Vazio
    [Documentation]  
    Fazer login como usuário autenticado
    Acessar página de receita
    Tentar enviar comentário vazio
    Verificar mensagem de erro

*** Keywords ***
Fazer login como usuário autenticado
    Go To    ${URL_BASE}/login/
    Sleep    2s
    Wait Until Element Is Visible    id=email    timeout=10s
    Input Text    id=email    ${USERNAME}
    Input Text    id=password    ${PASSWORD}
    Click Button    xpath=//button[text()='Login']
    Sleep    5s
    
Acessar página de receita
    Go To    ${URL_BASE}/receita/26
    Wait Until Element Is Visible    id=comentarioReceita    timeout=10s

Escrever comentário
    [Arguments]    ${comentario}
    Wait Until Element Is Visible    id=comentarioReceita    timeout=10s
    Input Text    id=comentarioReceita    ${comentario}
    Click Button    id=botaoEnviarComentario  
    Sleep    1s

Verificar comentário adicionado
    [Arguments]    ${comentario}
    Wait Until Element Is Visible    xpath=//p[contains(text(), '${comentario}')]    timeout=10s

Tentar enviar comentário vazio
    Wait Until Element Is Visible    id=comentarioReceita    timeout=10s
    Click Button    id=botaoEnviarComentario  
    Sleep    1s  

Verificar mensagem de erro
    Wait Until Element Is Visible    xpath=//span[contains(text(), 'Este campo é obrigatório.')]    timeout=10s
