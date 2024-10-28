*** Settings ***
Library	SeleniumLibrary

*** Variables ***
${BROWSER}	chrome 
${URL}		http://localhost:8000/
${SENHA}    Teste123!
${EMAIL}    roboto@verival.com



*** Keywords ***
Abrir o navegador
	Open Browser	browser=${BROWSER}
	Maximize Browser Window

Fechar o navegador
	Capture Page Screenshot
	Close Browser

Acessar a pagina home do site
	Go To	url=${URL}

Digitar no campo email o email do usuario
	Input Text	xpath=//*[@id="email"]        ${EMAIL}

Digitar no campo senha a senha do usuário
	Input Text	xpath=//*[@id="password"]         ${SENHA}
Acessar pagina de login
    Click Element    xpath=//*[@id="login-button"]
Acionar o botão login
    Click Element    xpath=//*[@id="botao-login"]
	Sleep    3
Entrar em uma receita
    Click Element    xpath=/html/body/main/section/div[2]/a[1]
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
Verificar denúncia
    Page Should Contain    Denúncia registrada com sucesso
Verificar comentários
    Page Should Not Contain    id=comentarios-form





