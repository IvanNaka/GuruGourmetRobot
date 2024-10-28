*** Settings ***
Library	SeleniumLibrary

*** Keywords ***
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
Verificar denúncia
    Page Should Contain    Denúncia registrada com sucesso
