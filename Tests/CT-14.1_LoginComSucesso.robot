*** Settings ***
Library     AppiumLibrary       
Resource    ../resources/resources.robot

Test Setup       Open Session
Test Teardown    Close Session    CT-14.1_LoginComSucesso

*** Test Cases ***
#Este test case foi implementado no arquivo resources.robot

############################################################
#                    Felipe Bernard                        #
############################################################

Abrir app Hear
    Dado que eu esteja na pagina inicial do App Hear
    Quando eu preencho corretamente os campos do usuário
    E clico em entrar
    #Então o login deve ser realizado //Só será possível após a integração com o backend