*** Settings ***
Resource    ../resources/utils/base.resource

*** Keywords ***
### DADO
Dado que estou logado com sucesso
    [Arguments]    ${LOGIN}    ${SENHA}
    Dado que estou na tela de login
    Quando envio as credencias                            ${LOGIN}    ${SENHA}
    Então devo acessar a tela principal do aplicativo

### QUANDO
Quando adiciono um item ao carrinho
    Clicar no botão                                 ${BOTAO_MOCHILA}
    Swipe Up Until Element Is Visible And Click     ${BOTAO_ADD_TO_CART}
    Wait Until Element Is Visible                   ${BOTAO_REMOVE}

### E
E envio as informações da entrega
    Clicar no botão      ${BOTAO_CART}
    Clicar no botão      ${BOTAO_CHECKOUT}
    ${FIRSTNAME_FAKE}    FakerLibrary.First Name
    ${LASTNAME_FAKE}     FakerLibrary.Last Name
    ${POSTALCODE_FAKE}   FakerLibrary.Postalcode
    Inserir texto        ${INPUT_FIRSTNAME}     ${FIRSTNAME_FAKE}
    Inserir texto        ${INPUT_LASTNAME}      ${LASTNAME_FAKE}
    Inserir texto        ${INPUT_POSTALCODE}    ${POSTALCODE_FAKE}
    Clicar no botão      ${BOTAO_CONTINUE}


### ENTÃO
Então devo finalizar a compra com sucesso
    Wait Until Element Is Visible                   ${MODAL_CHECKOUT_INFO}
    Swipe Up Until Element Is Visible And Click     ${BOTAO_FINISH}
    Wait Until Element Is Visible                   ${MODAL_CHECKOUT_COMPLETE}
    Verificar se o texto está visível               ${checkout.mensagem.compraRealizadaSucesso}

Então devo remover este item do carrinho
    Clicar no botão      ${BOTAO_CART}
    Clicar no botão      ${BOTAO_REMOVE}