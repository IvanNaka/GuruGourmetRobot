*** Settings ***
Library	    SeleniumLibrary
Resource    ../pages/resource.robot

*** Variables ***


*** Keywords ***
Cadastrar receita
    Open Browser	browser=${BROWSER}
    Maximize Browser Window


Editar receita
    Open Browser	browser=${BROWSER}
    Maximize Browser Window
