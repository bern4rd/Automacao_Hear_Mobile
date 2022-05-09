*** Settings ***
Library     AppiumLibrary       
Resource    ../resources/resources.robot

*** Test Cases ***
#Este test case foi implementado no arquivo resources.robot
Abrir app Hear
    Dado que eu abro o app Hear
    Quando eu preencho os campos do usuário
    E clico em entrar