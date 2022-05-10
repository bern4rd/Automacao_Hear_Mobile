*** Settings ***
Library     AppiumLibrary       
Resource    ../resources/resources.robot

*** Test Cases ***
#Este test case foi implementado no arquivo resources.robot
Abrir app Hear
    Dado que eu abro o app Hear
    Quando eu preencho corretamente os campos do usuário
    E clico em entrar
    #Então o login deve ser realizado //Só será possível após a integração com o backend