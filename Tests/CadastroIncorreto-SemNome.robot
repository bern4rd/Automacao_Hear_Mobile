*** Settings ***
Library     AppiumLibrary       
Resource    ../resources/resources.robot

Test Setup       Open Session
Test Teardown    Close Session

*** Test Cases ***
#Este test case foi implementado no arquivo resources.robot

############################################################
#                    Silas Augusto                         #
############################################################

Cadastro incorreto de usuario 
    Dado que eu esteja na pagina inicial do App Hear
    Quando eu cliclo em Cadastrar
    E os campos de cadastro estão visiveis
    E preencho as informações de cadastro sem nome
    Então o botão de cadastrar deve estar desabilitado
    #E cliclo em CADASTRAR        //Só será possível após a integração com o backend