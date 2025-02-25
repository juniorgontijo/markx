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

    ${task}    Set Variable    Comprar refrigerante
    Remove Task from database    ${task}

    Do Login
    Create a new task    ${task}
    Should have task     ${task}

    Remove Task by name                 ${task}
    Wait Until Page Does Not Contain    ${task} 

Deve poder concluir uma tarefa
    [Tags]    done

    ${task}    Set Variable    Estudar XPath
    Remove Task from database    ${task}

    Do Login
    Create a new task    ${task}
    Should have task     ${task}

    Finish task                ${task}
    Task should be done        ${task}