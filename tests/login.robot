*** Settings ***
Documentation     Testes de login

Resource          ../resources/base.resource

*** Test Cases ***
Deve Logar com sucesso

    Open Application    http://localhost:4723
    ...        automationName=UiAutomator2
    ...        platformName=Android
    ...        deviceName=Emulator
    ...        udid=emulator-5554
    ...        autoGrantPermissions=true
    ...        app=${EXECDIR}/apps/markx.apk

    Sleep    10