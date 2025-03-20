*** Settings ***
Resource    base.resource

*** Keywords ***
Inserir texto
    [Arguments]                      ${LOCATOR}    ${TEXTO}
    Wait Until Element Is Visible    ${LOCATOR}
    Input Text                       ${LOCATOR}    ${TEXTO}

Clicar no botão
    [Arguments]                      ${BOTAO}
    Wait Until Element Is Visible    ${BOTAO}
    Click Element                    ${BOTAO}

Verificar se o texto está visível
    [Arguments]                      ${TEXTO}
    Wait Until Page Contains         ${TEXTO}

Swipe Up Until Element Is Visible And Click
    [Arguments]    ${element_locator}    ${max_swipes}=5    ${swipe_duration}=500
    FOR    ${i}    IN RANGE    ${max_swipes}
        # Tenta encontrar o elemento
        Swipe    540    1872    540    468     ${swipe_duration}
        Sleep    1  # Espera para a tela estabilizar
        ${status}    Run Keyword And Return Status
        ...    Wait Until Element Is Visible    ${element_locator}    timeout=2
        IF    ${status}
            Click Element    ${element_locator}
            Exit For Loop
        ELSE
            # Realiza o swipe up (ajuste as coordenadas conforme necessário)
            Swipe    540    1872    540    468     ${swipe_duration}
            Sleep    1  # Espera para a tela estabilizar
        END
    END
    IF    not ${status}
        Fail    Elemento '${element_locator}' não encontrado após ${max_swipes} swipes.
    END