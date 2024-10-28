*** Settings ***
Library	    SeleniumLibrary
Resource    ../pages/resource.robot

*** Variables ***


*** Keywords ***

Escrever comentário
    [Arguments]    ${comentario}
    Input Text    id=comentarioReceita    ${comentario}
    Click Button    id=botaoEnviarComentario  
    Sleep    1s

Verificar comentário adicionado
    [Arguments]    ${comentario}
    Page Should Contain    text=${comentario}

Tentar enviar comentário vazio
    Click Button    id=botaoEnviarComentario  
    Sleep    1s

Verificar mensagem de erro
    Page Should Contain    text=Este campo é obrigatório.