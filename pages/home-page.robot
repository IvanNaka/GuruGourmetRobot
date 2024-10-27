*** Settings ***
Library	    SeleniumLibrary
Resource    ../pages/resource.robot

*** Variables ***


*** Keywords ***
Entrar em uma receita
    Click Element    xpath=/html/body/main/section/div[2]/a[1]
