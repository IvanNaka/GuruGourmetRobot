*** Settings ***
Library	    SeleniumLibrary
Resource    ../pages/resource.robot

*** Variables ***


*** Keywords ***
Acessar receita
    Open Browser	browser=${BROWSER}
    Maximize Browser Window

