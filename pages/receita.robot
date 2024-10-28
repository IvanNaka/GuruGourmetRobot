*** Settings ***
Library	    SeleniumLibrary
Resource    ../pages/resource.robot

***Keywords***
Acionar botão denunciar
    Execute Javascript    window.scrollBy(0,300)
    Click Element    xpath=(//button[text()="Denunciar"])[1]
Scroll para ver comentários
    Execute Javascript    window.scrollBy(0,400)
    Capture Page Screenshot
Verificar comentários
    Page Should Not Contain    id=comentarios-form
