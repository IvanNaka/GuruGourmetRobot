*** Settings ***
Library	    SeleniumLibrary
Resource    ../pages/resource.robot

*** Variables ***
${URL}		http://localhost:8000/


*** Keywords ***
Acessar a pagina home do site
	Go To	url=${URL}
    
Acessar Minhas Receitas
    Click Button      id=button-minhas
    Click Link        id=receita
