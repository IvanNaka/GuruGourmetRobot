*** Settings ***
Library	    SeleniumLibrary
Resource    ../pages/resource.robot

*** Variables ***
${ingrediente}    Cebola
${quantidade}    2.5
${unidadeMedida}    g
${titulo}    Receita de Cebola Assada
${tempo_preparo}    45 minutos
${texto}    Receita simples e deliciosa de cebola assada com temperos especiais.

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

Verificar caixa de comentario desabilitada
    Page Should Not Contain    text=Deixe seu comentário

Acionar botão denunciar
    Execute Javascript    window.scrollBy(0,300)
    Click Element    xpath=(//button[text()="Denunciar"])[1]
Escrever Denúncia    
    Click Element    xpath=/html/body/div/form/textarea
	Input Text    xpath=/html/body/div/form/textarea    Não gostei
Terminar Denúncia
    Click Element    xpath=/html/body/div/form/button
	Sleep    2
	Capture Page Screenshot
Scroll para ver comentários
    Execute Javascript    window.scrollBy(0,400)
	Capture Page Screenshot

Verificar Denúncia
    Page Should Contain    text=Denúncia registrada com sucesso.