*** Settings ***
Resource    ../resources/utils/base.resource

*** Variables ***
### INPUT
${INPUT_USERNAME}                   android=new UiSelector().text("Username")
${INPUT_PASSWORD}                   android=new UiSelector().text("Password")

### BOTOES
${BOTAO_LOGIN_HOME}                 android=new UiSelector().description("test-LOGIN")

### MODAL
${MODAL_PRODUCTS}                   android=new UiSelector().text("PRODUCTS")
