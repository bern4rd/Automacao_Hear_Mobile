*** Settings ***
Library     AppiumLibrary       
Resource    ../resources/resources.robot

Test Setup       Open Session
Test Teardown    Close Session    LoginIncorreto-SemEmail

*** Test Cases ***
#Este test case foi implementado no arquivo resources.robot

############################################################
#                    Henrique Sabino                       #
############################################################

Abrir app Hear
    Dado que eu esteja na pagina inicial do App Hear
    Quando eu preencho corretamente os campos do usuário sem o email
    Então o botão de login deve estar desabilitado