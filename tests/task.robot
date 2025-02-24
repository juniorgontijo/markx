*** Settings ***
Documentation    Suite de testes do cadastro de tarefas

Resource         ${EXECDIR}/resources/base.resource

Test Setup       Start session
Test Teardown    Finish session

*** Test Cases ***
Deve poder cadastrar uma nova tarefa

    ${task}    Set Variable    Estudar Python
    Remove Task from database    ${task}

    Do Login
    Create a new task    ${task}
    Should have task     ${task}

Deve poder remover uma tarefa indesejada
    [Tags]    remove

    # Dado que eu tenho uma tarefa indesejada
    ${task}    Set Variable    Comprar refrigerante
    Remove Task from database    ${task}


    # E essa foi cadastrada no sistema 
    Do Login
    Create a new task    ${task}
    Should have task     ${task}

    # Quando eu faço a exclusão dessa tarefa
    Remove Task by name                 ${task}

    # Então essa tarefa some da tela
    Wait Until Page Does Not Contain    ${task} 
