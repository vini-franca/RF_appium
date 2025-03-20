*** Settings ***
Resource         ../resources/utils/base.resource
Test Teardown    Close All Applications
*** Test Cases ***

CT-01 - Validar login com sucesso
    [Tags]    CT-001
    Dado que estou na tela de login
    Quando envio as credencias                        ${login.usuarioPadrao}    ${login.senha}
    Então devo acessar a tela principal do aplicativo

CT-02 - Validar login inválido - Usuário bloqueado
    [Tags]    CT-002
    Dado que estou na tela de login
    Quando envio as credencias                         ${login.usuarioBloqueado}    ${login.senha}
    Então devo visualizar a mensagem de erro           ${login.mensagem.usuarioBloqueado}

CT-03 - Validar login inválido - Usuário não cadastrado
    [Tags]    CT-003
    Dado que estou na tela de login
    Quando envio as credencias                         ${login.usuarioNaoCadastrado}    ${login.senha}
    Então devo visualizar a mensagem de erro           ${login.mensagem.usuarioNaoCadastrado}


