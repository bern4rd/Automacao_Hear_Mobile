*** Settings ***
Library     AppiumLibrary       
Resource    ../../resources/resources.robot

Test Setup       Open Session
Test Teardown    Close Session    CT-14.7_LoginIncorreto-SemSenha

*** Test Cases ***
#Este test case foi implementado no arquivo resources.robot

############################################################
#                    Henrique Sabino                       #
############################################################

Abrir app Hear
    Dado que eu esteja na pagina inicial do App Hear
    Quando eu preencho corretamente os campos do usuário sem a senha
    Então o botão de login deve estar desabilitado