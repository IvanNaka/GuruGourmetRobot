*** Settings ***
Library	SeleniumLibrary

*** Variables ***
${BROWSER}	chrome 
${URL}	http://127.0.0.1:8000/
${URLcadastro}    http://127.0.0.1:8000/cadastro/

*** Keywords ***
Abrir o navegador
    Open Browser	browser=${BROWSER}
    Maximize Browser Window

Fechar o navegador

    Capture Page Screenshot
    Close Browser

Acessar a home page
    Go To    url=${URL}
   
Acessar o registrar
    Go To    url=${URLcadastro}