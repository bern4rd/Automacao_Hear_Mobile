*** Settings ***
Library     AppiumLibrary       
Resource    ../resources/resources.robot

Test Setup       Open Session
Test Teardown    Close Session

*** Test Cases ***
#Este test case foi implementado no arquivo resources.robot
Cadastrar usuario
    Dado que eu esteja na pagina inicial do App Hear
    Quando eu cliclo em Cadastrar
    E preencho as informações de cadastro
    #E cliclo em CADASTRAR        //Só será possível após a integração com o backend