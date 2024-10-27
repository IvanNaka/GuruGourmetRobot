*** Settings ***
Library	    SeleniumLibrary
Resource    ../pages/resource.robot

*** Variables ***
${ingrediente}          Arroz
${quantidade}           1
${unidadeMedida}        Kg
${titulo}               Teste
${tempo_preparo}        10 min
${texto}                Teste
${imagePath}            C:/Users/ivann/Downloads/puc/GuruGourmetRobot/images/image.jpg
${ingredienteNovo}      Alface
${quantidadeNovo}       200
${unidadeMedidaNovo}    g
${tituloNovo}           TesteEditar
${tempo_preparoNovo}    30 min
${textoNovo}            Teste Editar

*** Keywords ***
Cadastrar receita
    Click Button      id=button-criar
    Input Text        id=novoIngrediente        ${ingrediente}
    Input Text        id=quantidade             ${quantidade}
    Input Text        id=unidadeMedida          ${unidadeMedida}
    Click Button      id=addIngrediente
    Input Text        id=titulo                 ${titulo}
    Input Text        id=tempo_preparo          ${tempo_preparo}
    Input Text        id=texto                  ${texto}
    Choose File       id=image                  ${imagePath}
    Click Button      id=salvar 

Editar receita
    Click Button      id=button-edit
    Input Text        id=novoIngrediente        ${ingredienteNovo}
    Input Text        id=quantidade             ${quantidadeNovo}
    Input Text        id=unidadeMedida          ${unidadeMedidaNovo}
    Click Button      id=addIngrediente
    Input Text        id=titulo                 ${tituloNovo}
    Input Text        id=tempo_preparo          ${tempo_preparoNovo}
    Input Text        id=texto                  ${textoNovo}
    Click Button      id=salvar 

Verificar Edicao
    Page Should Contain    ${tituloNovo}
    Page Should Contain    ${textoNovo}
    Page Should Contain    ${ingredienteNovo}
