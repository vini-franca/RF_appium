*** Settings ***
Resource         ../resources/utils/base.resource
Test Teardown    Close All Applications
*** Test Cases ***

CT-01 - Validar finalizar compra com sucesso - Mochila
    [Tags]    CT-001
    Dado que estou logado com sucesso    ${login.usuarioPadrao}    ${login.senha}
    Quando adiciono um item ao carrinho
    E envio as informações da entrega
    Então devo finalizar a compra com sucesso

CT-02 - Validar remover item do carrinho
    [Tags]    CT-002
    Dado que estou logado com sucesso    ${login.usuarioPadrao}    ${login.senha}
    Quando adiciono um item ao carrinho
    Então devo remover este item do carrinho


