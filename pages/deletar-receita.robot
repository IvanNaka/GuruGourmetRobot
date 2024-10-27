*** Settings ***
Library	    SeleniumLibrary
Resource    ../pages/resource.robot

*** Variables ***


*** Keywords ***
Deletar receita
    Open Browser	browser=${BROWSER}
    Maximize Browser Window

