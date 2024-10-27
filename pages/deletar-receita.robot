*** Settings ***
Library	    SeleniumLibrary
Resource    ../pages/resource.robot

*** Variables ***


*** Keywords ***
Deletar receita
    Click Button      id=deleteButton
    Click Button      id=apagar

