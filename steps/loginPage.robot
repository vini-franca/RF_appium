*** Settings ***
Resource    ../resources/utils/base.resource

*** Keywords ***
### DADO
Dado que estou na tela de login
    Open APP
    Wait Until Element Is Visible    ${BOTAO_LOGIN_HOME}

### QUANDO
Quando envio as credencias
    [Arguments]            ${USER}              ${PASSWORD}
    Inserir texto          ${INPUT_USERNAME}    ${USER}
    Inserir texto          ${INPUT_PASSWORD}    ${PASSWORD}
    Clicar no botão        ${BOTAO_LOGIN_HOME}

### ENTÃO
Então devo acessar a tela principal do aplicativo
    Wait Until Element Is Visible    ${MODAL_PRODUCTS}

Então devo visualizar a mensagem de erro
    [Arguments]                          ${MENSAGEM}
    Verificar se o texto está visível    ${MENSAGEM}
