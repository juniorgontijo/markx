*** Settings ***
Documentation     Testes de login

Resource          ../resources/base.resource

Test Setup       Start session
Test Teardown    Finish session

*** Test Cases ***
Deve Logar com sucesso

    Do Login 
    Wait Until Page Contains   Minhas tarefas    5
