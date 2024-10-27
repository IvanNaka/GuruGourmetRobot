*** Settings ***
Library	    SeleniumLibrary
Resource    ../pages/resource.robot

*** Variables ***


*** Keywords ***
Acessar Minhas Receitas
    Click Button      id=button-minhas
    Click Link        id=receita
