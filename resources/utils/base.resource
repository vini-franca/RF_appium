*** Settings ***
## Carrega as variáveis do arquivo `.env`
Library    ../../resources/lib/DotEnv.py

## Bibliotecas
Library    AppiumLibrary  timeout=30
# Library    BrowserstackLibrary    username=%{BROWSERSTACK_USERNAME=${None}}  access_key=%{BROWSERSTACK_ACCESS_KEY=${None}}
Library    String
Library    FakerLibrary

## Utils
Resource    openApp.resource
Resource    globalKeywords.resource

## Variaveis
Variables   ../app.yaml

## Pages
Resource    ../../pages/loginPage.robot
Resource    ../../pages/checkoutPage.robot

## Steps
Resource    ../../steps/loginPage.robot
Resource    ../../steps/checkoutPage.robot

*** Variables ***
${PLATFORM_NAME}   android
${EMULATOR}        local    #local ou browserstack
# ${BS_USER_NAME}        %{BROWSERSTACK_USER_NAME=${None}}
# ${BS_ACCESS_KEY}       %{BROWSERSTACK_ACCESS_KEY=${None}}
&{BROWSERSTACK_OPTIONS}          appiumVersion=2.0.1
${APP_DOWNLOAD_URL}              %{APP_DOWNLOAD_URL=${None}}