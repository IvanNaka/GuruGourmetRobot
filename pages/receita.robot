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
Criar receita
    Click Element    xpath=//button[@class="btn"]//a[@href="/receita/create"]
    Input Text    id=novoIngrediente    ${ingrediente}
    Input Text    id=quantidade         ${quantidade}
    Input Text    id=unidadeMedida      ${unidadeMedida}
    Click Element   id=addIngrediente
    Input Text    id=titulo            ${titulo}
    Input Text    id=tempo_preparo     ${tempo_preparo}
    Input Text    id=texto             ${texto}
    Choose File    id=image    C:\Users\salio\OneDrive\Área de Trabalho\FACULDADE\3° PERIODO\Experiência Criativa\gurugourmet\staticfiles\assets\receitas\receita1.png
    Click Element   xpath=//button[text()="Salvar"]
    
deletar Informações da receita
    Click Element    xpath=//button[@class="btn"]//a[text()="Editar receita"]
    Select From List By Label    id=ingredientes    Cebola - 1.00 g
    Click Element    xpath=//button[@class="btn" and @id="removeIngrediente"]*** Settings ***

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